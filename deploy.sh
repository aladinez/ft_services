#!/bin/bash


kubectl apply -f https://raw.githubusercontent.com/metallb/metallb/v0.9.5/manifests/namespace.yaml
kubectl apply -f https://raw.githubusercontent.com/metallb/metallb/v0.9.5/manifests/metallb.yaml
kubectl create secret generic -n metallb-system memberlist --from-literal=secretkey="$(openssl rand -base64 128)"
sed -i '' s/ALADINLEPRINCE/$(minikube ip)/g yaml/metallbConfigmap.yaml
kubectl apply -f yaml/metallbConfigmap.yaml
kubectl apply -f yaml/wordpress-deployment.yaml
kubectl apply -f yaml/grafana-deployment.yaml
kubectl apply -f yaml/phpmyadmin-deployment.yaml
kubectl apply -f yaml/nginx-deployment.yaml
kubectl apply -f yaml/mysql-deployment.yaml
kubectl apply -f yaml/influxdb-deployment.yaml


sed -i '' s/$(minikube ip)/ALADINLEPRINCE/g yaml/metallbConfigmap.yaml

echo "--------------------- PODS -------------------"
echo "----------------------------------------------"
kubectl get pod
printf "\n"
echo "----------------------------------------------"
echo "--------------------- SVCS -------------------"
echo "----------------------------------------------"
kubectl get svc
