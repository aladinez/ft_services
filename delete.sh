#!/bin/bash


kubectl delete -f yaml/metallbConfigmap.yaml
kubectl delete -f yaml/wordpress-deployment.yaml
kubectl delete -f yaml/grafana-deployment.yaml
kubectl delete -f yaml/phpmyadmin-deployment.yaml
kubectl delete -f yaml/nginx-deployment.yaml
kubectl delete -f yaml/mysql-deployment.yaml

echo "--------------------- PODS -------------------"
echo "----------------------------------------------"
kubectl get pod
printf "\n"
echo "----------------------------------------------"
echo "--------------------- SVCS -------------------"
echo "----------------------------------------------"
kubectl get svc
