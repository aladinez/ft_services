#!/bin/bash

sed -i '' s/ALADINLEPRINCE/$(minikube ip)/g mysql/db_wordpress.sql
sed -i '' s/ALADINLEPRINCE/$(minikube ip)/g nginx/default.conf
sed -i '' s/ALADINLEPRINCE/$(minikube ip)/g influxdb/telegraf.conf
sed -i '' s/ALADINLEPRINCE/$(minikube ip)/g ftps/srcs/vsftpd.conf

docker build -t nginx nginx --no-cache
docker build -t grafana grafana --no-cache
docker build -t wordpress wordpress --no-cache
docker build -t phpmyadmin phpmyadmin --no-cache
docker build -t mysql mysql --no-cache
docker build -t influxdb influxdb --no-cache
docker build -t ftps ftps --no-cache

sed -i '' s/$(minikube ip)/ALADINLEPRINCE/g mysql/db_wordpress.sql
sed -i '' s/$(minikube ip)/ALADINLEPRINCE/g nginx/default.conf
sed -i '' s/$(minikube ip)/ALADINLEPRINCE/g influxdb/telegraf.conf
sed -i '' s/$(minikube ip)/ALADINLEPRINCE/g ftps/srcs/vsftpd.conf
