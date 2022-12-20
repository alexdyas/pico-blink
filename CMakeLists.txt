cmake_minimum_required(VERSION 3.25)

include(pico_sdk_import.cmake)

project(blink)

add_executable(blink
        blink.c
        )

pico_sdk_init()

# pull in common dependencies
target_link_libraries(blink pico_stdlib)

# create map/bin/hex file etc.
pico_add_extra_outputs(blink)