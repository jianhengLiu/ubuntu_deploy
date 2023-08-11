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
git clone https://github.com/ethz-adrl/ifopt.git && cd ifopt
mkdir build && cd build
cmake -DCMAKE_BUILD_TYPE=Release ..
## to build snopt solver: https://github.com/castanhas98/install-snopt-tutorial
# export SNOPT_DIR=dir_name/snopt-interface
# cmake -DCMAKE_BUILD_TYPE=Release -DBUILD_SNOPT=ON ..
### modify code/.cmake
# FindSNOPT.cmake: set(snopt_v76 FALSE) -> set(SNOPT_v76 TRUE)
# snopt_adapter.cc: setUserFun(&SnoptAdapter::ObjectiveAndConstraintFct); -> this->initialize("print_file.out",1);
###
make
sudo make install # copies files in this folder to /usr/local/*
# sudo xargs rm < install_manifest.txt # in case you want to uninstall the above
