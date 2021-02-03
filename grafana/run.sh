#!/bin/sh

service telegraf start
/grafana/bin/grafana-server --homepath /grafana
