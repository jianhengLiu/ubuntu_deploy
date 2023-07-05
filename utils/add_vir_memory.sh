#!/bin/bash

# 20480000 -> 20G
sudo dd if=/dev/zero of=/home/swap bs=1024 count=10240000
sudo mkswap /home/swap
sudo swapon /home/swap
