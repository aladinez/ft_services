#!/bin/bash
rc
service mariadb start
service telegraf start
sh /mysql.sh
