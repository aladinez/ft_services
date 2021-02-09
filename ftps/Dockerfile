FROM alpine:3.11

COPY password.txt .
RUN apk update
RUN apk add openrc vim
VOLUME /sys/fs/cgroup
RUN rc-status -a
RUN touch /run/openrc/softlevel
RUN rc
RUN apk add vsftpd
RUN rm /etc/vsftpd/vsftpd.conf
COPY vsftpd.conf /etc/vsftpd/
RUN passwd < /password.txt

ENTRYPOINT service vsftpd start && tail -f dev/null


