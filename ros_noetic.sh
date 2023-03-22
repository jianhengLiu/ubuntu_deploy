#!/bin/bash

sudo sh -c '. /etc/lsb-release && echo "deb http://mirrors.tuna.tsinghua.edu.cn/ros/ubuntu/ `lsb_release -cs` main" > /etc/apt/sources.list.d/ros-latest.list'

sudo apt install curl # if you haven't already installed curl
curl -s https://raw.githubusercontent.com/ros/rosdistro/master/ros.asc | sudo apt-key add -

sudo apt-get install -y gnupg2 # 或 gnupg
sudo apt update
sudo apt install ros-noetic-desktop-full

#echo "source /opt/ros/noetic/setup.bash" >> ~/.bashrc
#source ~/.bashrc

echo "source /opt/ros/noetic/setup.zsh" >> ~/.zshrc
source ~/.zshrc

sudo apt install python3-rosdep python3-rosinstall python3-rosinstall-generator python3-wstool build-essential
sudo apt install python3-rosdep
sudo rosdep init
rosdep update
