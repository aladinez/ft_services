#!/bin/sh

service influxdb start
service telegraf start
tail -f /dev/null