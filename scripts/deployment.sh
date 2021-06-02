#!/bin/bash
export IMAGE=$1
kubectl set image deployment microservice microservice=$IMAGE
