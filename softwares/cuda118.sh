#!/bin/bash

# CUDA
# https://docs.nvidia.com/cuda/cuda-installation-guide-linux/index.html#runfile-installation
wget https://developer.download.nvidia.com/compute/cuda/11.8.0/local_installers/cuda_11.8.0_520.61.05_linux.run
sudo sh cuda_11.8.0_520.61.05_linux.run

# cudnn
# https://docs.nvidia.com/deeplearning/cudnn/install-guide/index.html#install-linux
wget https://developer.download.nvidia.com/compute/cudnn/secure/8.8.1/local_installers/11.8/cudnn-linux-x86_64-8.8.1.3_cuda11-archive.tar.xz?ElF0-ZzjY2EoRxik7Af1P6HVW-J5UekOaXg_ImxvXk4IRdcb9uYcBcrqELRt3egVCHYzZiPZHjUn9h482LZoGFNsjJgvmCmM20NgLLWVhCi3o8I_WxSQ7XX_jKTbzfRbwf9I3Fiytp2mHhKnSVb1YRLYCqFT19lgk_xeN--FVUmLDVaL-XK5SASPZ3fJlb8y8T0lDNSK3CQztPsfqzWvWw==&t=eyJscyI6InJlZiIsImxzZCI6IlJFRi1ibG9nLmNzZG4ubmV0L215X19ibG9nL2FydGljbGUvZGV0YWlscy8xMjU3MjM3MjUifQ==
tar -xvf cudnn-linux-x86_64-*
sudo cp cudnn-*-archive/include/cudnn*.h /usr/local/cuda/include 
sudo cp -P cudnn-*-archive/lib/libcudnn* /usr/local/cuda/lib64 
sudo chmod a+r /usr/local/cuda/include/cudnn*.h /usr/local/cuda/lib64/libcudnn*

echo "# CUDA Version" >> ~/.zshrc
echo "export PATH=/usr/local/cuda/bin:\$PATH" >> ~/.zshrc
echo "export LD_LIBRARY_PATH=/usr/local/cuda/lib64:\$LD_LIBRARY_PATH" >> ~/.zshrc




