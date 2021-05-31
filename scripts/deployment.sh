#!/bin/bash
kubectl apply -f https://raw.githubusercontent.com/NickBaynham/capstone3/main/deployment/backend-deployment.yml
kubectl apply -f https://raw.githubusercontent.com/NickBaynham/capstone3/main/deployment/backend-service.yml
kubectl apply -f https://raw.githubusercontent.com/NickBaynham/capstone3/main/deployment/frontend-deployment.yml
kubectl apply -f https://raw.githubusercontent.com/NickBaynham/capstone3/main/deployment/frontend-service.yml
kubectl apply -f https://raw.githubusercontent.com/NickBaynham/capstone3/main/deployment/app-deployment.yml

