#!/bin/sh
echo "<h1>hello world</h1>" >> /var/www/index.html
rm /etc/nginx/conf.d/default.conf
mv default.conf /etc/nginx/conf.d/
service nginx start