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
git clone https://github.com/osqp/osqp
cd osqp
git checkout v0.6.3
git submodule update --init --recursive
mkdir build
cd build
cmake ..
cmake --build .
sudo make install
