#!/usr/bin/env bash
# Use: install_deps_ubuntu.sh [ assume-yes ]

set -ev

yum install centos-release-scl

deps=(
    # Open3D
    ## xorg-dev
    libX11-devel
    xorg-x11-proto-devel
    ## libxcb-shm0
    libxcb

    ## libglu1-mesa-dev
    mesa-libglu-devel

    ## python3-dev
    python3-devel

    # Filament build-from-source
    ## clang
    ## libc++-dev
    ## libc++abi-dev
    # NOTE: This requires before using:
    # $ scl enable llvm-toolset-7.0 bash
    llvm-toolset-7.0

    ## libsdl2-dev
    SDL-devel
    SDL-static

    ## TODO: ninja-build
    unzip

    ## libxi-dev
    libXi-devel

    # ML
    ## libtbb-dev
    tbb-devel

    # Headless rendering
    ## libosmesa6-dev
    mesa-libOSMesa-devel

    # RealSense
    ## libudev-dev
    libgudev1-devel

    autoconf
    libtool
)

echo "yum install ${deps[*]}"
yum install ${deps[*]}

echo "install ninja binary"
curl -LO https://github.com/ninja-build/ninja/releases/download/v1.11.1/ninja-linux.zip \
 && unzip ninja-linux.zip \
 && install -m 755 ninja /usr/local/bin \
 && rm ninja-linux.zip
