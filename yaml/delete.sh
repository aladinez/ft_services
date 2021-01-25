#!/bin/bash


kubectl delete -f wordpress-deployment.yaml
kubectl delete -f grafana-deployment.yaml
kubectl delete -f phpmyadmin-deployment.yaml
kubectl delete -f nginx-deployment.yaml
kubectl delete -f mysql-deployment.yaml


echo "--------------------- PODS -------------------"
echo "----------------------------------------------"
kubectl get pod
printf "\n"
echo "----------------------------------------------"
echo "--------------------- SVCS -------------------"
echo "----------------------------------------------"
kubectl get svc