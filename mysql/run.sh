#!/bin/bash
rc-status
# /usr/bin/mysql_install_db --user=mysql --basedir=/usr --datadir=/var/lib/mysql
/etc/init.d/mariadb setup
/usr/bin/mysql_install_db  --datadir=/var/lib/mysql
# mysqladmin shutdown
service mariadb start
service telegraf start


user="root"
dbname="db_wordpress"
name="admin"
pass="admin"

mysql -u $user -e "CREATE DATABASE $dbname;CREATE USER $name@'%' identified by '$pass';GRANT ALL ON *.* to $name@'%' WITH GRANT OPTION;FLUSH PRIVILEGES;"
#grant all tables on all databases to $name , with ability to grant any other user (with grant optin).

mysql < /db_wordpress.sql -u root db_wordpress

tail -f /dev/null
