FROM alpine:3.11

RUN apk update
# RUN apk add nginx
RUN apk add openrc vim
RUN mkdir /run/openrc && touch /run/openrc/softlevel
RUN apk add mysql mysql-client
RUN /etc/init.d/mariadb setup

COPY run.sh .
COPY mysql.sh .

ENTRYPOINT sh run.sh && tail -f /dev/null