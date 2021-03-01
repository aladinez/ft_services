FROM alpine:3.11

RUN apk update
RUN apk add openrc vim openssl bash
VOLUME /sys/fs/cgroup
RUN rc-status -a
RUN touch /run/openrc/softlevel
RUN rc
RUN apk add vsftpd
RUN rm /etc/vsftpd/vsftpd.conf
COPY srcs/vsftpd.conf /etc/vsftpd/
#install telegraf
RUN apk add telegraf --repository=http://dl-cdn.alpinelinux.org/alpine/edge/community
RUN rm /etc/telegraf.conf
COPY srcs/telegraf.conf /etc/
COPY srcs/health.sh /
COPY srcs/run.sh .
ENTRYPOINT sh run.sh


