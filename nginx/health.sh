#!/bin/bash

while [ True ]; do
        val=`ps`
        if [[ ! $val =~ "nginx" ]] || [[ ! `ps` =~ "telegraf" ]]; then
                exit 1
        else
                exit 0
        fi
done