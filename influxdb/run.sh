#!/bin/sh

service influxdb start
service telegraf start


/grafana/bin/grafana-server --homepath /grafana
