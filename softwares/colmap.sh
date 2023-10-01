#!/bin/bash

sudo apt-get install \
    git \
    cmake \
    ninja-build \
    build-essential \
    libboost-program-options-dev \
    libboost-filesystem-dev \
    libboost-graph-dev \
    libboost-system-dev \
    libeigen3-dev \
    libflann-dev \
    libfreeimage-dev \
    libmetis-dev \
    libgoogle-glog-dev \
    libgtest-dev \
    libsqlite3-dev \
    libglew-dev \
    qtbase5-dev \
    libqt5opengl5-dev \
    libcgal-dev \
    libceres-dev \
    liblz4-dev

sudo apt-get install -y \
    nvidia-cuda-toolkit \
    nvidia-cuda-toolkit-gcc

# Set the directory name
dir_name="$HOME/Softwares"

# Check if the directory exists
if [ ! -d "$dir_name" ]; then
  # If it doesn't exist, create it
  mkdir "$dir_name"
  echo "Created directory $dir_name"
else
  echo "Directory $dir_name already exists"
fi

cd $dir_name
# https://colmap.github.io/install.html#linux
git clone https://github.com/colmap/colmap.git
cd colmap
git checkout dev
mkdir build
cd build
# if any dependencies wrong, checkout to a release version
cmake .. -GNinja # -DCMAKE_CUDA_ARCHITECTURES='native'
ninja
sudo ninja install