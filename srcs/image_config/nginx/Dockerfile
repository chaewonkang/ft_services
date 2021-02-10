FROM alpine:3.12.3

RUN apk update && apk add nginx curl openrc
RUN rc-status && touch /run/openrc/softlevel 
RUN rc-update add nginx default

RUN adduser -D -g 'www' www && mkdir /www
RUN chown -R www:www /var/lib/nginx && chown -R www:www /www

RUN echo "http://nl.alpinelinux.org/alpine/edge/community" >> /etc/apk/repositories
RUN apk add telegraf
RUN mkdir /etc/telegraf
ADD ./srcs/telegraf.conf /etc/telegraf/telegraf.conf

COPY ./srcs/nginx.conf /etc/nginx/nginx.conf
COPY ./srcs/index.html /www/index.html

RUN apk add openssl
RUN openssl req -x509 -nodes -days 365 -subj "/C=CA/ST=QC/O=Company, Inc./CN=mydomain.com" -addext "subjectAltName=DNS:mydomain.com" -newkey rsa:2048 -keyout /etc/ssl/private/nginx-selfsigned.key -out /etc/ssl/certs/nginx-selfsigned.crt

RUN apk add openssh && rc-update add sshd default
RUN adduser -D testuser
RUN echo "testuser:1337" | chpasswd
RUN ssh-keygen -A
COPY ./srcs/testssh.html /home/testuser/testssh.html

COPY ./srcs/script.sh /script.sh
RUN chmod +x /script.sh

EXPOSE 80 443 22

CMD [ "sh", "script.sh" ]