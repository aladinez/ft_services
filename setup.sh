#!/bin/bash

minikube delete
#minikube start --drive=virtualbox
minikube start --vm-driver=virtualbox
eval $(minikube docker-env)
sh build-images.sh
sh deploy.sh
minikube dashboard &
