#!/bin/sh

echo -e "147258369\n147258369" | passwd root
echo -e "123456789\n123456789" | adduser alae
openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
-keyout /etc/ssl/private/vsftpd.pem -out /etc/ssl/private/vsftpd.pem \
-subj "/C=US/ST=Denial/L=Springfield/O=Dis/CN=www.alae.com"
service vsftpd start
service telegraf start
tail -f /dev/null