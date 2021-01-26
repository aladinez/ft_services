#!/bin/bash

sed -i '' s/192.168.99.107/$(minikube ip)/g db_wordpress.sql
