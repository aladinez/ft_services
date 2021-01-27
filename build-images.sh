#!/bin/bash


sed -i '' s/ALADINLEPRINCE/$(minikube ip)/g mysql/db_wordpress.sql
sed -i '' s/ALADINLEPRINCE/$(minikube ip)/g yaml/metallbConfigmap.yaml
sed -i '' s/ALADINLEPRINCE/$(minikube ip)/g nginx/default.conf

docker build -t nginx-image nginx --no-cache
docker build -t grafana-image grafana --no-cache
docker build -t wordpress-image wordpress --no-cache
docker build -t phpmyadmin-image phpmyadmin --no-cache
docker build -t mysql-image mysql --no-cache

sed -i '' s/$(minikube ip)/ALADINLEPRINCE/g mysql/db_wordpress.sql
sed -i '' s/$(minikube ip)/ALADINLEPRINCE/g yaml/metallbConfigmap.yaml
sed -i '' s/$(minikube ip)/ALADINLEPRINCE/g nginx/default.conf
