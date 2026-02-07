/**
 * LOCALFS - Lazy file loading for Emscripten via the File System Access API.
 * Patches FS.open to read files on-demand from a user-selected local directory.
 * The directory handle is persisted in IndexedDB for reuse across sessions.
 *
 * Requires Emscripten Asyncify to handle async File System Access API calls.
 */

addToLibrary({
  $LOCALFS__deps: ['$FS'],
  $LOCALFS__postset: 'LOCALFS.staticInit();',
  $LOCALFS: {
    DB_NAME: 'localfs-storage',
    DB_STORE: 'handles',
    DB_KEY: 'rootDirHandle',

    initialized: false,
    originalOpen: null,
    rootDirHandle: null,
    db: null,
    _lastFetchResult: null,

    // File cache to avoid re-reading files
    fileCache: new Map(),

    staticInit: function() {
      if (typeof FS !== 'undefined' && FS.open) {
        LOCALFS.originalOpen = FS.open;
        FS.open = LOCALFS.patchedOpen;
        LOCALFS.initialized = true;

        if (typeof window !== 'undefined' && window.LOCALFS_DIR_HANDLE) {
          LOCALFS.rootDirHandle = window.LOCALFS_DIR_HANDLE;
        }
      }
    },

    // Initialize IndexedDB
    initDB: function() {
      return new Promise(function(resolve, reject) {
        if (LOCALFS.db) {
          resolve(LOCALFS.db);
          return;
        }

        var request = indexedDB.open(LOCALFS.DB_NAME, 1);

        request.onerror = function(event) {
          reject(event.target.error);
        };

        request.onsuccess = function(event) {
          LOCALFS.db = event.target.result;
          resolve(LOCALFS.db);
        };

        request.onupgradeneeded = function(event) {
          var db = event.target.result;
          if (!db.objectStoreNames.contains(LOCALFS.DB_STORE)) {
            db.createObjectStore(LOCALFS.DB_STORE);
          }
        };
      });
    },

    // Save directory handle to IndexedDB
    saveDirHandle: function(handle) {
      return LOCALFS.initDB().then(function(db) {
        return new Promise(function(resolve, reject) {
          var transaction = db.transaction([LOCALFS.DB_STORE], 'readwrite');
          var store = transaction.objectStore(LOCALFS.DB_STORE);
          var request = store.put(handle, LOCALFS.DB_KEY);

          request.onsuccess = function() {
            resolve();
          };

          request.onerror = function(event) {
            reject(event.target.error);
          };
        });
      });
    },

    // Load directory handle from IndexedDB
    loadDirHandle: function() {
      return LOCALFS.initDB().then(function(db) {
        return new Promise(function(resolve, reject) {
          var transaction = db.transaction([LOCALFS.DB_STORE], 'readonly');
          var store = transaction.objectStore(LOCALFS.DB_STORE);
          var request = store.get(LOCALFS.DB_KEY);

          request.onsuccess = function(event) {
            resolve(event.target.result || null);
          };

          request.onerror = function(event) {
            reject(event.target.error);
          };
        });
      });
    },

    // Clear the stored directory handle
    clearDirHandle: function() {
      return LOCALFS.initDB().then(function(db) {
        return new Promise(function(resolve, reject) {
          var transaction = db.transaction([LOCALFS.DB_STORE], 'readwrite');
          var store = transaction.objectStore(LOCALFS.DB_STORE);
          var request = store.delete(LOCALFS.DB_KEY);

          request.onsuccess = function() {
            LOCALFS.rootDirHandle = null;
            LOCALFS.fileCache.clear();
            resolve();
          };

          request.onerror = function(event) {
            reject(event.target.error);
          };
        });
      });
    },

    // Show directory picker, save the handle, and reload to re-init WASM
    selectDirectory: function() {
      if (!window.showDirectoryPicker) {
        return Promise.reject(new Error('File System Access API not supported'));
      }

      return window.showDirectoryPicker({ mode: 'read' })
        .then(function(handle) {
          LOCALFS.rootDirHandle = handle;
          LOCALFS.fileCache.clear();
          return LOCALFS.saveDirHandle(handle).then(function() {
            window.location.reload();
            return handle;
          });
        });
    },

    // Try to restore the saved directory handle
    restoreDirectory: function() {
      // First check if the shell already set a handle via global
      if (typeof window !== 'undefined' && window.LOCALFS_DIR_HANDLE) {
        LOCALFS.rootDirHandle = window.LOCALFS_DIR_HANDLE;
        return Promise.resolve(LOCALFS.rootDirHandle);
      }

      return LOCALFS.loadDirHandle().then(function(handle) {
        if (!handle) {
          return null;
        }

        // Verify we still have permission
        return handle.queryPermission({ mode: 'read' }).then(function(permission) {
          if (permission === 'granted') {
            LOCALFS.rootDirHandle = handle;
            return handle;
          }

          // Need to request permission again
          return handle.requestPermission({ mode: 'read' }).then(function(permission) {
            if (permission === 'granted') {
              LOCALFS.rootDirHandle = handle;
              return handle;
            }
            return null;
          });
        });
      }).catch(function() {
        return null;
      });
    },

    // Check if we have a directory ready (either in memory or saved)
    hasDirectory: function() {
      if (LOCALFS.rootDirHandle) {
        return Promise.resolve(true);
      }
      return LOCALFS.loadDirHandle().then(function(handle) {
        return handle !== null;
      });
    },

    // Normalize a path (resolve . and .., make consistent)
    normalizePath: function(path) {
      // Convert backslashes to forward slashes (Windows-style paths)
      path = path.replace(/\\/g, '/');
      // Remove leading slash for relative path from root
      path = path.replace(/^\/+/, '');
      // Split and resolve . and ..
      var parts = path.split('/');
      var result = [];
      for (var i = 0; i < parts.length; i++) {
        var part = parts[i];
        if (part === '' || part === '.') continue;
        if (part === '..') {
          if (result.length > 0) result.pop();
        } else {
          result.push(part);
        }
      }
      return result.join('/');
    },

    // Get a file handle from a path relative to the root directory
    getFileHandle: function(path) {
      if (!LOCALFS.rootDirHandle) {
        return Promise.reject(new Error('No directory selected'));
      }

      var normalizedPath = LOCALFS.normalizePath(path);
      var parts = normalizedPath.split('/');

      // Navigate through directories to find the file
      var current = LOCALFS.rootDirHandle;

      function navigateTo(index) {
        if (index >= parts.length - 1) {
          // Last part is the file name
          return current.getFileHandle(parts[parts.length - 1]);
        }

        return current.getDirectoryHandle(parts[index]).then(function(dirHandle) {
          current = dirHandle;
          return navigateTo(index + 1);
        });
      }

      if (parts.length === 1) {
        return current.getFileHandle(parts[0]);
      }

      return navigateTo(0);
    },

    // Read a file from the local filesystem
    readFile: function(path) {
      var normalizedPath = LOCALFS.normalizePath(path);

      // Check cache first
      if (LOCALFS.fileCache.has(normalizedPath)) {
        return Promise.resolve(LOCALFS.fileCache.get(normalizedPath));
      }

      return LOCALFS.getFileHandle(path)
        .then(function(fileHandle) {
          return fileHandle.getFile();
        })
        .then(function(file) {
          return file.arrayBuffer();
        })
        .then(function(buffer) {
          var data = new Uint8Array(buffer);
          // Cache the result
          LOCALFS.fileCache.set(normalizedPath, data);
          return data;
        });
    },

    // Ensure parent directories exist in MEMFS
    ensureParentDirs: function(path) {
      var parts = path.split('/').filter(function(p) { return p.length > 0; });
      var current = '';

      for (var i = 0; i < parts.length - 1; i++) {
        current += '/' + parts[i];
        try {
          FS.mkdir(current);
        } catch (e) {
          // Directory might already exist (EEXIST) - that's fine
          if (e.errno !== 20) {
            // Some other error, but we can try to continue
          }
        }
      }
    },

    // Async file fetch - used with Asyncify
    fetchFileAsync: async function(path) {
      if (!LOCALFS.rootDirHandle && typeof window !== 'undefined' && window.LOCALFS_DIR_HANDLE) {
        LOCALFS.rootDirHandle = window.LOCALFS_DIR_HANDLE;
      }

      if (!LOCALFS.rootDirHandle) {
        try {
          var restored = await LOCALFS.restoreDirectory();
          if (!restored) {
            return null;
          }
        } catch (err) {
          return null;
        }
      }

      try {
        return await LOCALFS.readFile(path);
      } catch (err) {
        return null;
      }
    },

    // Normalize path for MEMFS (helper used by patchedOpen)
    normalizeMemPath: function(path) {
      var normalizedMemPath = path.replace(/\\/g, '/');
      if (normalizedMemPath[0] !== '/') {
        normalizedMemPath = FS.cwd() + '/' + normalizedMemPath;
      }
      // Resolve . and ..
      var parts = normalizedMemPath.split('/');
      var result = [];
      for (var i = 0; i < parts.length; i++) {
        var p = parts[i];
        if (p === '' || p === '.') continue;
        if (p === '..') {
          if (result.length > 0) result.pop();
        } else {
          result.push(p);
        }
      }
      return '/' + result.join('/');
    },

    // Patched open that reads files from local filesystem
    // Uses Asyncify to handle async File System Access API calls
    patchedOpen: function(path, flags, mode) {
      // If path is not a string (e.g., internal FS node), pass through to original
      if (typeof path !== 'string') {
        return LOCALFS.originalOpen(path, flags, mode);
      }

      var normalizedMemPath = LOCALFS.normalizeMemPath(path);

      // Try original open first (file might already be in MEMFS cache)
      try {
        return LOCALFS.originalOpen(normalizedMemPath, flags, mode);
      } catch (e) {
        // Only handle ENOENT (file/directory not found)
        if (e.errno !== 44) {
          throw e;
        }
      }

      if (!LOCALFS.rootDirHandle) {
        if (typeof window !== 'undefined' && window.LOCALFS_DIR_HANDLE) {
          LOCALFS.rootDirHandle = window.LOCALFS_DIR_HANDLE;
        } else {
          throw new FS.ErrnoError(44);
        }
      }

      if (typeof Asyncify === 'undefined' || typeof Asyncify.handleSleep !== 'function') {
        throw new FS.ErrnoError(44);
      }

      // Use handleSleep directly because handleAsync passes the promise result to wakeUp,
      // which only accepts falsy/number/boolean values (not Uint8Array).
      // Store the data in a temporary property and pass a status code to wakeUp.
      Asyncify.handleSleep(function(wakeUp) {
        LOCALFS.fetchFileAsync(normalizedMemPath).then(function(result) {
          LOCALFS._lastFetchResult = result;
          wakeUp(result ? 1 : 0);
        }).catch(function() {
          LOCALFS._lastFetchResult = null;
          wakeUp(0);
        });
      });
      var data = LOCALFS._lastFetchResult;
      LOCALFS._lastFetchResult = null;

      if (data) {
        // Ensure parent directories exist
        LOCALFS.ensureParentDirs(normalizedMemPath);

        try {
          FS.writeFile(normalizedMemPath, data);
        } catch (e) {
          throw new FS.ErrnoError(44);
        }

        // Now the original open should succeed
        return LOCALFS.originalOpen(normalizedMemPath, flags, mode);
      }

      throw new FS.ErrnoError(44);
    },
  },

  // C-callable function to select directory (returns 1 on success, 0 on failure)
  localfs_select_directory__deps: ['$LOCALFS'],
  localfs_select_directory__async: true,
  localfs_select_directory: function() {
    return Asyncify.handleAsync(async function() {
      try {
        await LOCALFS.selectDirectory();
        return 1;
      } catch (err) {
        return 0;
      }
    });
  },

  // C-callable function to restore saved directory (returns 1 on success, 0 on failure)
  localfs_restore_directory__deps: ['$LOCALFS'],
  localfs_restore_directory__async: true,
  localfs_restore_directory: function() {
    return Asyncify.handleAsync(async function() {
      try {
        var handle = await LOCALFS.restoreDirectory();
        return handle ? 1 : 0;
      } catch (err) {
        return 0;
      }
    });
  },

  // C-callable function to check if directory is ready (returns 1 if ready, 0 if not)
  localfs_has_directory__deps: ['$LOCALFS'],
  localfs_has_directory__async: true,
  localfs_has_directory: function() {
    return Asyncify.handleAsync(async function() {
      try {
        var hasDir = await LOCALFS.hasDirectory();
        return hasDir ? 1 : 0;
      } catch (err) {
        return 0;
      }
    });
  },

  // C-callable function to clear saved directory
  localfs_clear_directory__deps: ['$LOCALFS'],
  localfs_clear_directory__async: true,
  localfs_clear_directory: function() {
    return Asyncify.handleAsync(async function() {
      try {
        await LOCALFS.clearDirHandle();
        return 1;
      } catch (err) {
        return 0;
      }
    });
  },
});
