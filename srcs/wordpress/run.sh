#!/bin/bash
rc
service php-fpm7 start
service nginx start
service telegraf start
tail -f /dev/null
