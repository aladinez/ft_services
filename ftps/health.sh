#!/bin/bash

while [ True ]; do
        if [[ ! `ps` == "*nginx*" ]] || [[ ! `ps` =~ "telegraf" ]] || [[ ! `ps` =~ "php-fpm" ]]; then
                exit 1
        else
                exit 0
        fi
done

while [ True ]; do
        val=`ps`
        if [[ "$val" == *telegraf* ]] ; then
                echo kayn
                exit 1
        else
                echo makaynch
                exit 0
        fi
done