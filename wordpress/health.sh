#!/bin/bash

while [ True ]; do
        if [[ ! `ps` =~ "nginx" ]] || [[ ! `ps` =~ "telegraf" ]] || [[ ! `ps` =~ "php-fpm" ]]; then
                exit 1
        else
                exit 0
        fi
done