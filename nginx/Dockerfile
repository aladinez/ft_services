FROM alpine:3.11

RUN apk update
RUN apk add openrc vim openssh bash
RUN rc-status -a
RUN touch /run/openrc/softlevel
RUN apk add nginx
RUN mkdir /etc/nginx/ssl
RUN chmod 777 /etc/nginx/ssl
COPY nginx.key etc/nginx/ssl/
COPY nginx.crt etc/nginx/ssl/
COPY run.sh .
COPY default.conf .
RUN rm /etc/motd
COPY motd /etc/motd

#install telegraf
RUN apk add telegraf --repository=http://dl-cdn.alpinelinux.org/alpine/edge/community
RUN rm /etc/telegraf.conf
COPY telegraf.conf /etc/


COPY health.sh /



ENTRYPOINT sh run.sh
