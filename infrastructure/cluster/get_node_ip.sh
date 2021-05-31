#!/bin/bash

if [ $# -ne 1 ]; then
  echo "Usage: get-node-ip.sh <terraform output ip variable>"
  exit 1
fi

NODE="$1"
NODE="$(terraform output $NODE)"
NODE=`echo $NODE | sed 's/.\(.*\)/\1/' | sed 's/\(.*\)./\1/'`
echo $NODE
