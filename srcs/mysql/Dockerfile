FROM alpine:3.11

RUN apk update
RUN apk add openrc vim bash
RUN mkdir -p /run/openrc && touch /run/openrc/softlevel
RUN apk add mysql mysql-client
RUN rm /etc/my.cnf.d/mariadb-server.cnf
COPY mariadb-server.cnf /etc/my.cnf.d/
VOLUME /sys/fs/cgroup
#install telegraf
RUN apk add telegraf --repository=http://dl-cdn.alpinelinux.org/alpine/edge/community
RUN rm /etc/telegraf.conf
COPY telegraf.conf /etc/
COPY db_wordpress.sql .
COPY run.sh .
COPY health.sh /

ENTRYPOINT sh run.sh