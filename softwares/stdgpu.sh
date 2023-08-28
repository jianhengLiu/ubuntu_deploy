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
git clone https://github.com/stotko/stdgpu.git && cd stdgpu
# to install in /usr/local, delete -DCMAKE_INSTALL_PREFIX=bin in stdgpu/tools/backend/helper/configure.sh
bash tools/setup.sh
sudo bash tools/install.sh 