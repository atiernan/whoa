if(WHOA_SYSTEM_WIN)
    file(GLOB PRIVATE_SOURCES "win/*.cpp")

    add_executable(Whoa WIN32 ${PRIVATE_SOURCES})

    target_link_libraries(Whoa
        PRIVATE
            client
            event
            gx
            net
            util
        )
endif()

if(WHOA_SYSTEM_MAC)
    file(GLOB PRIVATE_SOURCES "mac/*.cpp" "mac/*.mm")

    set_source_files_properties(${PRIVATE_SOURCES}
        PROPERTIES COMPILE_FLAGS "-x objective-c++"
    )

    add_executable(Whoa ${PRIVATE_SOURCES})

    target_link_libraries(Whoa
        PRIVATE
            client
            event
            gx
            net
            util
            "-framework AppKit"
            "-framework Carbon"
            "-framework IOKit"
    )

    install(DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}/mac/MainMenu.nib DESTINATION "bin")
endif()

if(WHOA_SYSTEM_LINUX)
    file(GLOB PRIVATE_SOURCES "linux/*.cpp")

    add_executable(Whoa ${PRIVATE_SOURCES})

    target_link_libraries(Whoa
        PRIVATE
            client
            event
            gx
            net
            util
    )
endif()

if(WHOA_SYSTEM_WEB)
    file(GLOB PRIVATE_SOURCES "web/*.cpp")

    add_executable(Whoa ${PRIVATE_SOURCES})

    target_link_libraries(Whoa
        PRIVATE
            client
            event
            gx
            net
            util
    )

    # Embed WGSL shaders into WASM binary
    set(SHADER_DIR "${CMAKE_SOURCE_DIR}/src/gx/webgpu/Shaders")

    set_target_properties(Whoa PROPERTIES OUTPUT_NAME "index" SUFFIX ".html")

    # Select shell file based on filesystem backend
    if(WHOA_USE_LOCALFS)
        set(SHELL_FILE "${CMAKE_CURRENT_SOURCE_DIR}/web/shell_localfs.html")
        # Additional Asyncify imports for LOCALFS async operations
        set(ASYNCIFY_IMPORTS "['__syscall_openat','__syscall_stat64','__syscall_lstat64','__syscall_fstat64','localfs_select_directory','localfs_restore_directory','localfs_has_directory','localfs_clear_directory']")
        # Define preprocessor macro for C++ code
        target_compile_definitions(Whoa PRIVATE WHOA_USE_LOCALFS)
    else()
        set(SHELL_FILE "${CMAKE_CURRENT_SOURCE_DIR}/web/shell.html")
        set(ASYNCIFY_IMPORTS "['__syscall_openat','__syscall_stat64','__syscall_lstat64','__syscall_fstat64']")
    endif()

    target_link_options(Whoa PRIVATE
        "SHELL:--shell-file ${SHELL_FILE}"
        -sASYNCIFY
        -sASYNCIFY_STACK_SIZE=524288
        -sALLOW_MEMORY_GROWTH
        "-sASYNCIFY_IMPORTS=${ASYNCIFY_IMPORTS}"
        "SHELL:--embed-file ${SHADER_DIR}/Vertex/wgsl@/Shaders/Vertex/wgsl"
        "SHELL:--embed-file ${SHADER_DIR}/Pixel/wgsl@/Shaders/Pixel/wgsl"
    )

    # Ensure changes to shell HTML trigger a relink
    set_property(TARGET Whoa APPEND PROPERTY LINK_DEPENDS ${SHELL_FILE})
endif()

target_include_directories(Whoa
    PRIVATE
        ${CMAKE_SOURCE_DIR}/src
)

install(TARGETS Whoa DESTINATION "bin")
