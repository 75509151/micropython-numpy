add_library(usermod_numpy INTERFACE)

file(GLOB_RECURSE NUMPY_SOURCES ${CMAKE_CURRENT_LIST_DIR}/*.c)

target_sources(usermod_numpy INTERFACE
    ${NUMPY_SOURCES}
)

target_include_directories(usermod_numpy INTERFACE
    ${CMAKE_CURRENT_LIST_DIR}/src
)

target_compile_definitions(usermod_numpy INTERFACE
    MODULE_NUMPY_ENABLED=1
)

target_link_libraries(usermod INTERFACE usermod_numpy)

