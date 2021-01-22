#!/bin/bash

docker build -t nginx-image nginx --no-cache
docker build -t grafana-image grafana --no-cache
docker build -t wordpress-image wordpress --no-cache
docker build -t phpmyadmin-image phpmyadmin --no-cache
