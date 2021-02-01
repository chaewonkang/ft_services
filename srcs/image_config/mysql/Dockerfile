FROM alpine:3.12.3

VOLUME  ["/sys/fs/cgroup"]

RUN apk add openrc
RUN apk add mariadb mariadb-common mariadb-client
RUN rc-update add mariadb default
RUN rc-status && touch /run/openrc/softlevel

ADD ./srcs/script.sh ./script.sh

EXPOSE 3306

CMD sh script.sh