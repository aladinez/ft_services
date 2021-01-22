FROM alpine:3.11

RUN apk update
RUN apk add nginx
RUN apk add openrc vim
RUN mkdir /run/openrc && touch /run/openrc/softlevel
RUN apk add mysql mysql-client
RUN /etc/init.d/mariadb setup
RUN apk add php7 php7-fpm php7-opcache
RUN	apk add php php7-fpm phpmyadmin php-mbstring php-gettext  php7-common php7-iconv php7-json php7-gd php7-curl php7-xml php7-mysqli php7-imap php7-cgi fcgi php7-pdo php7-pdo_mysql php7-soap php7-xmlrpc php7-posix php7-mcrypt php7-gettext php7-ldap php7-ctype php7-dom

COPY run.sh .
COPY mysql.sh .
RUN rm /etc/nginx/conf.d/default.conf
COPY default.conf /etc/nginx/conf.d/

RUN wget https://files.phpmyadmin.net/phpMyAdmin/5.0.4/phpMyAdmin-5.0.4-english.tar.gz
RUN tar xvf phpMyAdmin-5.0.4-english.tar.gz
RUN mv phpMyAdmin-5.0.4-english /var/www/phpmyadmin
RUN rm -rf php*.tar.gz
RUN mkdir -p /var/lib/phpmyadmin/tmp
RUN chmod 777 /var/lib/phpmyadmin/tmp


COPY config.inc.php /var/www/phpmyadmin/
ENTRYPOINT sh run.sh && tail -f /dev/null