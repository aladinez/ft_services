#!/bin/bash

minikube delete
minikube start --vm-driver=virtualbox --memory 3072
eval $(minikube docker-env)

docker build -t nginx nginx
docker build -t grafana grafana
docker build -t wordpress wordpress
docker build -t phpmyadmin phpmyadmin
docker build -t mysql mysql
docker build -t influxdb influxdb
docker build -t ftps ftps

kubectl apply -f https://raw.githubusercontent.com/metallb/metallb/v0.9.5/manifests/namespace.yaml
kubectl apply -f https://raw.githubusercontent.com/metallb/metallb/v0.9.5/manifests/metallb.yaml
kubectl create secret generic -n metallb-system memberlist --from-literal=secretkey="$(openssl rand -base64 128)"
kubectl apply -f yaml/metallbConfigmap.yaml

kubectl apply -f yaml/influxdb-deployment.yaml
kubectl apply -f yaml/wordpress-deployment.yaml
kubectl apply -f yaml/grafana-deployment.yaml
kubectl apply -f yaml/phpmyadmin-deployment.yaml
kubectl apply -f yaml/nginx-deployment.yaml
kubectl apply -f yaml/mysql-deployment.yaml
kubectl apply -f yaml/ftps-deployment.yaml

minikube dashboard &
