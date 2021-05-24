#!/bin/bash

if [ $# -ne 2 ]; then
  echo "Usage: setup_dev_host.sh  <github user name> <github email>"
  exit 1
fi

USER_NAME=$1
EMAIL=$2

echo "Setting up a dev host for $USER_NAME with email address of $EMAIL"

sudo apt-get update
sudo apt-get install -y tree

# Install AWS CLI
apt install -y unzip
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install
aws --version
rm awscliv2.zip
rm -r ./aws

# Install Terraform
curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo apt-key add -
sudo apt-add-repository "deb [arch=$(dpkg --print-architecture)] https://apt.releases.hashicorp.com $(lsb_release -cs) main"
sudo apt install terraform
terraform --version

# Install Ansible
sudo apt update
sudo apt install -y ansible

# Install boto3 and boto-core
sudo apt-get -y install software-properties-common
sudo apt-add-repository universe
sudo apt-get update
sudo apt-get install -y python3-pip
pip3 install boto3 boto-core

# Install Ansible AWS EC2 Inventory Source
ansible-galaxy collection install amazon.aws

# Install Ansible Role for Jenkins
ansible-galaxy install emmetog.jenkins

# Clone the 'capstone3' repository
git --version
config --global user.email "$EMAIL"
config --global user.name "$USER_NAME"
git clone https://github.com/NickBaynham/capstone3.git
tree capstone3
cp /etc/ansible/ansible.cfg /etc/ansible/ansible.cfg.bak
cp ~/capstone3/devops_tools/config/ansible.cfg /etc/ansible/ansible.cfg

# Generate an SSH Key Pair
ssh-keygen -b 2048 -t rsa -f ~/.ssh/id_rsa -q -N ''

echo To configure AWS run 'aws configure'

