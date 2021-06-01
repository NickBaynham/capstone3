#!/bin/bash

if [ $# -ne 2 ]; then
  echo "Usage: git-repository <git user name> <git user email>"
  exit 1
fi

USER=$1
EMAIL=$2

sudo apt-get update
sudo apt-get install -y tree

git --version
git config --global user.email "$EMAIL"
git config --global user.name "$USER"
git clone https://github.com/NickBaynham/capstone3.git
tree capstone3
