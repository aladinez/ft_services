#!/bin/sh

openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
-keyout /etc/ssl/private/vsftpd.pem -out /etc/ssl/private/vsftpd.pem \
-subj "/C=US/ST=Denial/L=Springfield/O=Dis/CN=www.alae.com"

service vsftpd start