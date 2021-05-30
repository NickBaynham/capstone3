#!/bin/bash

## Run as Root: sudo su -

if [ $# -ne 2 ]; then
  echo "Usage: add-user.sh <user_name> <public_key>"
  exit 1
fi

export USER_NAME="$1"
export PUBLIC_KEY="$2"

adduser --disabled-password --gecos '' $USER_NAME
mkdir -p /home/${USER_NAME}/.ssh
touch /home/${USER_NAME}/.ssh/authorized_keys
echo $PUBLIC_KEY > authorized_keys
mv authorized_keys /home/${USER_NAME}/.ssh
chown -R ${USER_NAME}:${USER_NAME} /home/${USER_NAME}/.ssh
chmod 0700 /home/${USER_NAME}/.ssh
chmod 0600 /home/${USER_NAME}/.ssh/authorized_keys
usermod -aG sudo $USER_NAME
usermod -aG docker $USER_NAME
touch /etc/sudoers.d/${USER_NAME}
chmod 0600 /etc/sudoers.d/${USER_NAME}
echo "${USER_NAME} 	ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers.d/${USER_NAME}
