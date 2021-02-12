FROM alpine:3.11

RUN apk update
RUN apk add openrc vim openssl
VOLUME /sys/fs/cgroup
RUN rc-status -a
RUN touch /run/openrc/softlevel
RUN rc
RUN apk add vsftpd
RUN rm /etc/vsftpd/vsftpd.conf
COPY srcs/vsftpd.conf /etc/vsftpd/

COPY srcs/password.txt .
RUN passwd < /password.txt

COPY srcs/run.sh .
ENTRYPOINT sh run.sh && tail -f dev/null


