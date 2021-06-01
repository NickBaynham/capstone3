#!/bin/bash
sudo apt update
sudo apt install -y unzip
sudo curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
sudo unzip awscliv2.zip
sudo ./aws/install
rm -r aws/
rm awscliv2.zip
aws --version

