#!/bin/bash
rc
# service mariadb start
# sh /mysql.sh
service php-fpm7 start
service nginx start
service telegraf start
tail -f /dev/null
