FROM alpine:latest

RUN apk update
RUN apk add grafana
# RUN ./usr/sbin/grafana-server -homepath ./usr/share/grafana/

COPY ./srcs/script.sh /script.sh
RUN chmod +x /script.sh

EXPOSE 3000
CMD [ "sh", "script.sh" ]