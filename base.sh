#!/bin/bash

# 更新系统软件包
sudo apt update
sudo apt upgrade

# 安装常用的软件包
sudo apt install -y git curl wget zsh

sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions

# 录屏软件
sudo apt install -y simplescreenrecorder

# gif 录屏软件
sudo add-apt-repository ppa:peek-developers/stable
sudo apt update
sudo apt install peek

# 系统监控
sudo add-apt-repository ppa:fossfreedom/indicator-sysmonitor  
sudo apt-get update 
sudo apt-get install indicator-sysmonitor 


cp -r config/* ~/