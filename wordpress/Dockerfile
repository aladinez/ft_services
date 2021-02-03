FROM alpine:3.11

RUN apk update
RUN apk add nginx
RUN apk add openrc vim
RUN mkdir /run/openrc && touch /run/openrc/softlevel
# RUN apk add mysql mysql-client
# RUN /etc/init.d/mariadb setup
RUN apk add php7 php7-fpm php7-opcache
RUN apk add php7-gd php7-mysqli php7-zlib php7-curl php7-json
RUN wget https://wordpress.org/latest.tar.gz
RUN tar -zxvf latest.tar.gz
RUN mv wordpress /var/www/wordpress
RUN rm latest.tar.gz
VOLUME /sys/fs/cgroup

COPY wp-config.php .
# COPY db_wordpress.sql .
RUN mv wp-config.php /var/www/wordpress/
COPY run.sh .
# COPY mysql.sh .
RUN rm /etc/nginx/conf.d/default.conf
COPY default.conf /etc/nginx/conf.d/

#install telegraf
RUN apk add telegraf --repository=http://dl-cdn.alpinelinux.org/alpine/edge/community
RUN rm /etc/telegraf.conf
COPY telegraf.conf /etc/

ENTRYPOINT sh run.sh && tail -f /dev/null