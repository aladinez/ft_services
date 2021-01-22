#!/bin/sh 

user="root"
dbname="phpmyadmin"
name="admin"
pass="admin"

mysql -u $user -e "CREATE DATABASE $dbname;CREATE USER $name@localhost identified by '$pass';GRANT ALL ON *.* to $name@localhost WITH GRANT OPTION;"
#grant all tables on all databases to $name , with ability to grant any other user (with grant optin).

mysql < /var/www/phpmyadmin/sql/create_tables.sql -u root

