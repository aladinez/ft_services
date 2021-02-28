FROM alpine:3.11

RUN apk update
RUN apk add openrc vim
RUN rc-status -a
RUN touch /run/openrc/softlevel
RUN rc


RUN wget https://github.com/sgerrand/alpine-pkg-glibc/releases/download/2.32-r0/glibc-2.32-r0.apk
RUN apk add glibc-2.32-r0.apk --allow-untrusted
RUN wget https://dl.grafana.com/oss/release/grafana-7.3.7.linux-amd64.tar.gz
RUN tar -zxvf grafana-7.3.7.linux-amd64.tar.gz
RUN mv grafana-7.3.7 grafana


#install telegraf
RUN apk add telegraf --repository=http://dl-cdn.alpinelinux.org/alpine/edge/community
RUN rm /etc/telegraf.conf
COPY telegraf.conf /etc/

COPY grafana.db /grafana/data/

COPY run.sh /
ENTRYPOINT sh run.sh && tail -f dev/null
