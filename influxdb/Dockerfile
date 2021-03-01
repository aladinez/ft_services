FROM alpine:3.11

RUN apk update
RUN apk add openrc vim bash
RUN rc-status -a
RUN touch /run/openrc/softlevel
RUN rc

RUN apk add influxdb

#install telegraf
RUN apk add telegraf --repository=http://dl-cdn.alpinelinux.org/alpine/edge/community
RUN rm /etc/telegraf.conf
COPY telegraf.conf /etc/
COPY run.sh /

COPY health.sh /

ENTRYPOINT sh run.sh
