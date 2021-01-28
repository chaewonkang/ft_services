FROM alpine:latest

VOLUME  ["/sys/fs/cgroup"]

RUN apk add openrc
RUN apk add mariadb mariadb-common mariadb-client
RUN rc-status && touch /run/openrc/softlevel
RUN /etc/init.d/mariadb setup
RUN rc-update add mariadb default && openrc default

COPY ./srcs/query.sql ./query.sql
COPY ./srcs/script.sh ./script.sh

CMD sh script.sh