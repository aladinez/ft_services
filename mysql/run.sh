#!/bin/bash
rc
/usr/bin/mysql_install_db --user=mysql --basedir=/usr --datadir=/var/lib/mysql
service mariadb start
service telegraf start
sh /mysql.sh
