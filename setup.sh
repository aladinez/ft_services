#!/bin/sh

minikube delete
minikube start --vm-driver=virtualbox --memory 3072
eval $(minikube docker-env)

docker build -t nginx ./srcs/nginx
docker build -t grafana ./srcs/grafana
docker build -t wordpress ./srcs/wordpress
docker build -t phpmyadmin ./srcs/phpmyadmin
docker build -t mysql ./srcs/mysql
docker build -t influxdb ./srcs/influxdb
docker build -t ftps ./srcs/ftps

kubectl apply -f https://raw.githubusercontent.com/metallb/metallb/v0.9.5/manifests/namespace.yaml
kubectl apply -f https://raw.githubusercontent.com/metallb/metallb/v0.9.5/manifests/metallb.yaml
kubectl create secret generic -n metallb-system memberlist --from-literal=secretkey="$(openssl rand -base64 128)"

kubectl apply -f ./srcs/yaml/metallbConfigmap.yaml
kubectl apply -f ./srcs/yaml/influxdb-deployment.yaml
kubectl apply -f ./srcs/yaml/wordpress-deployment.yaml
kubectl apply -f ./srcs/yaml/grafana-deployment.yaml
kubectl apply -f ./srcs/yaml/phpmyadmin-deployment.yaml
kubectl apply -f ./srcs/yaml/nginx-deployment.yaml
kubectl apply -f ./srcs/yaml/mysql-deployment.yaml
kubectl apply -f ./srcs/yaml/ftps-deployment.yaml

minikube dashboard &
