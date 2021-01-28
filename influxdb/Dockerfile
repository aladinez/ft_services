FROM alpine:3.11

RUN apk update
RUN apk add openrc vim
RUN rc-status -a
RUN touch /run/openrc/softlevel
RUN apk add influxdb

ENTRYPOINT service influxdb start && tail -f dev/null