#!/bin/bash
# Set the directory name
dir_name="$HOME/Softwares"

coninhsl_path="$(dirname $(realpath $0))"

# Check if the directory exists
if [ ! -d "$dir_name" ]; then
  # If it doesn't exist, create it
  mkdir "$dir_name"
  echo "Created directory $dir_name"
else
  echo "Directory $dir_name already exists"
fi

mkdir $dir_name/ipopt_solver

cd $dir_name/ipopt_solver
git clone https://github.com/coin-or-tools/ThirdParty-ASL.git
cd ThirdParty-ASL
sudo ./get.ASL
sudo ./configure
sudo make
sudo make install

cd $dir_name/ipopt_solver
git clone https://github.com/coin-or-tools/ThirdParty-Mumps.git
cd ThirdParty-Mumps
sudo ./get.Mumps
sudo ./configure
sudo make
sudo make install

cd $dir_name/ipopt_solver
git clone https://github.com/coin-or-tools/ThirdParty-HSL.git
mkdir $coninhsl_path/coinhsl
tar -xzvf $coninhsl_path/coinhsl-2023.05.26.tar.gz -C $coninhsl_path/coinhsl --strip-components 1
mv $coninhsl_path/coinhsl $dir_name/ipopt_solver/ThirdParty-HSL
cd ThirdParty-HSL
./configure
make
sudo make install
sudo ldconfig


cd $dir_name
git clone https://github.com/coin-or/Ipopt.git
cd Ipopt
mkdir build
cd build
sudo ../configure
sudo make
sudo make test
sudo make install
