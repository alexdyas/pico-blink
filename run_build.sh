#!/bin/sh

# Name of directory to store build artifacts
BUILD_DIR="build"

# Set this so pico_sdk_import.cmake can see the Pico SDK library path
export PICO_SDK_PATH="../../pico-sdk"

# Remove build dir <- Probably don't really need this, but cleaner for now
#if [ -d "${BUILD_DIR}" ]
#then
#  echo "---------- Removing existing build directory ------------"
#  rm -rf "${BUILD_DIR}"
#fi

# Construct the make files
echo "---------- cmake ------------"
cmake -B "${BUILD_DIR}" -S .

# Compile
echo "---------- make ------------"
make -C "${BUILD_DIR}"/