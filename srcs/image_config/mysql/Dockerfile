FROM alpine:3.12.3

VOLUME  ["/sys/fs/cgroup"]

RUN apk add openrc
RUN apk add mariadb mariadb-common mariadb-client
RUN rc-update add mariadb default
RUN rc-status && touch /run/openrc/softlevel

RUN echo "http://nl.alpinelinux.org/alpine/edge/community" >> /etc/apk/repositories
RUN apk add influxdb telegraf
RUN mkdir /etc/telegraf
ADD ./srcs/telegraf.conf /etc/telegraf/telegraf.conf

ADD ./srcs/script.sh ./script.sh

EXPOSE 3306

CMD sh script.sh