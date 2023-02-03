#!/usr/bin/env bash
# Use: install_deps_spack.sh

set -ev

procs=$(($(cat /proc/cpuinfo | grep processor | wc -l) / 2))

yum install -y git python3
yum groupinstall -y "Development Tools"

git clone https://github.com/spack/spack.git
source spack/share/spack/setup-env.sh

spack env create spackenv
spack env activate spackenv
spack compiler find
spack add gcc@11.3.0+binutils^binutils@2.39+ld
spack install -j $procs

spack compiler find
spack add ninja@1.11.1%gcc@11.3.0 llvm@15.0.7%gcc@11.3.0
spack install -j $procs
