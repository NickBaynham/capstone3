#!/bin/bash

# Please copy the script to the appropriate Terraform directory before executing!

if [ $# -ne 2 ]; then
  echo "Usage: copy-to-server.sh <path to the local file to transfer> <terraform EC2 instance output ip"
  echo "Example: cd ~/capstone3/infrastructure/cluster && cp ../../scripts/copy-to-server.sh . && ./copy-to-server.sh ../../scripts/add-user.sh master-node-ip"
  exit 1
fi

FILE="$1"
SERVER="$2"
NODE="$(terraform output $SERVER)"
NODE=`echo $NODE | sed 's/.\(.*\)/\1/' | sed 's/\(.*\)./\1/'`
scp $FILE ubuntu@${NODE}:/home/ubuntu/add_users.sh
