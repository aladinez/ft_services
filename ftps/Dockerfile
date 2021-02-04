FROM alpine:3.11

RUN apk update
RUN apk add openrc vim
RUN rc-status -a
RUN touch /run/openrc/softlevel
RUN rc

ENTRYPOINT tail -f dev/null


