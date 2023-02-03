#!/usr/bin/env bash
# Use: install_deps_ubuntu.sh [ assume-yes ]

set -ev

deps=(
    # Open3D
    ## xorg-dev
    libvdpau-devel
    xorg-x11-proto-devel

    libX11-devel
    libXau-devel
    libXaw-devel
    libXcomposite-devel
    libXcursor-devel
    libXdamage-devel
    libXdmcp-devel
    libXevie-devel
    libXext-devel
    libXfixes-devel
    libXfont-devel
    libXfont2-devel
    libXft-devel
    libXi-devel
    libXinerama-devel
    libXmu-devel
    libXp-devel
    libXpm-devel
    libXrandr-devel
    libXrender-devel
    libXres-devel
    libXt-devel
    libXtst-devel
    libXv-devel
    libXvMC-devel
    libXxf86dga-devel
    libXxf86misc-devel
    libXxf86vm-devel

    ## libxcb-shm0
    libxcb

    ## libglu1-mesa-dev
    mesa-libglu-devel
    mesa-libEGL-devel

    ## python3-dev
    python3-devel

    # Filament build-from-source
    ## clang
    ## libc++-dev
    ## libc++abi-dev
    # See: install_deps_spack.sh

    ## libsdl2-dev
    SDL-devel
    SDL-static

    ## ninja-build
    # See: install_deps_spack.sh

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
yum install -y ${deps[*]}
