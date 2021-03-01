#!/bin/bash

while [ True ]; do
        val=`ps`
        if [[ "$val" != *telegraf* ]] || [[ "$val" != *mysql* ]]; then
                exit 1
        else
                exit 0
        fi
done