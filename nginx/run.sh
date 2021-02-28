#!/bin/sh
echo -e "123456789\n123456789" | adduser -h / alae
# echo "<h1>hello world</h1>" >> /var/www/index.html
rm /etc/nginx/conf.d/default.conf
mv default.conf /etc/nginx/conf.d/
service nginx start
service sshd start
service telegraf start
tail -f /dev/null