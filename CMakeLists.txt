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

#include(example_auto_set_url.cmake)

# add url via pico_set_program_url
#example_auto_set_url(blink)