#!/bin/bash

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
git clone https://github.com/isl-org/Open3D
cd Open3D
sh util/install_deps_ubuntu.sh
mkdir build
cd build
cmake ..
make
sudo make install
