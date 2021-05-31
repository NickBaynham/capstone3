#!/bin/bash

if [ $# -ne 1 ]; then
  echo "Usage: get-node-ip.sh <instance name>"
  exit 1
fi

export INSTANCE_NAME=$1
aws --region us-east-2 ec2 describe-instances --filters "Name=instance-state-name,Values=running" "Name=tag-value,Values=$INSTANCE_NAME" --query 'Reservations[*].Instances[*].[PublicIpAddress]' --output text
