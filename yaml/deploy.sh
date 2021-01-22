#!/bin/bash


kubectl apply -f wordpress-deployment.yaml
kubectl apply -f grafana-deployment.yaml
kubectl apply -f phpmyadmin-deployment.yaml
kubectl apply -f nginx-deployment.yaml

echo "--------------------- PODS -------------------"
echo "----------------------------------------------"
kubectl get pod
printf "\n"
echo "----------------------------------------------"
echo "--------------------- SVCS -------------------"
echo "----------------------------------------------"
kubectl get svc