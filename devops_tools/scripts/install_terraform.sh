#!/bin/bash
sudo apt update
curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo apt-key add -
sudo apt install terraform
terraform --version
