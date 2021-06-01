#!/bin/bash
export IMAGE=$1
kubectl set image deployment time-app time-app=$IMAGE
