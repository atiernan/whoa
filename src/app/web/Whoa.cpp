#include "client/Client.hpp"
#include "event/Event.hpp"
#include "gx/Device.hpp"
#include <emscripten.h>
#include <emscripten/html5.h>

// Forward declaration - defined in Client.cpp
int32_t InitializeGlobal();

#ifdef WHOA_USE_LOCALFS
// LOCALFS: Uses File System Access API to read from user-selected local directory
// Directory selection and persistence is handled in shell_localfs.html
extern "C" int localfs_has_directory();
#else
// FETCHFS: Set the base URL for lazy file loading from server
// Defined in library_fetchfs.js, linked via util library
extern "C" void fetchfs_set_base_url(const char* url);
#endif

static bool s_initialized = false;

// Main loop callback for Emscripten
static void MainLoop() {
    // Process one frame of events
    EventProcessFrame();
}

// Resize callback
static EM_BOOL OnResize(int eventType, const EmscriptenUiEvent* uiEvent, void* userData) {
    double cssWidth, cssHeight;
    emscripten_get_element_css_size("#canvas", &cssWidth, &cssHeight);

    if (g_theGxDevicePtr) {
        g_theGxDevicePtr->DeviceWM(GxWM_Size,
            static_cast<uintptr_t>(cssWidth),
            static_cast<uintptr_t>(cssHeight));
    }

    return EM_TRUE;
}

int main(int argc, char* argv[]) {
#ifdef WHOA_USE_LOCALFS
    // Reference LOCALFS to prevent tree-shaking - the library patches FS.open on init
    (void)localfs_has_directory();
#else
    // Configure FETCHFS to load files from ./data/ on the server
    // FETCHFS patches MEMFS to fetch files on-demand when accessed
    fetchfs_set_base_url("./data/");
#endif

    StormInitialize();

    // Set up resize callback
    emscripten_set_resize_callback(EMSCRIPTEN_EVENT_TARGET_WINDOW, nullptr, EM_TRUE, OnResize);

    if (InitializeGlobal()) {
        s_initialized = true;

        // Use Emscripten's main loop instead of blocking EventDoMessageLoop
        // 0 = use requestAnimationFrame, 0 = don't simulate infinite loop
        emscripten_set_main_loop(MainLoop, 0, 0);
    }

    return 0;
}
