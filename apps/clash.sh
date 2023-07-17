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

wget -O clash.tar.gz https://github.com/Fndroid/clash_for_windows_pkg/releases/download/0.20.28/Clash.for.Windows-0.20.28-x64-linux.tar.gz

mkdir $dir_name/clash #创建/opt/clash文件夹
tar -xzvf clash.tar.gz -C $dir_name/clash --strip-components 1

nohup $dir_name/clash/cfw &
rm clash.tar.gz
