#!/bin/sh 

user="root"
dbname="db_wordpress"
name="admin"
pass="admin"

mysql -u $user -e "CREATE DATABASE $dbname;CREATE USER $name@'%' identified by '$pass';GRANT ALL ON *.* to $name@'%' WITH GRANT OPTION;"
#grant all tables on all databases to $name , with ability to grant any other user (with grant optin).