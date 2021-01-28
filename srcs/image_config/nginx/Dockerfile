FROM alpine:3.12.3

VOLUME  ["/sys/fs/cgroup"]

RUN apk update && apk add nginx &&  apk add curl
RUN adduser -D -g 'www' www && mkdir /www
RUN chown -R www:www /var/lib/nginx && chown -R www:www /www

COPY ./srcs/nginx.conf /etc/nginx/nginx.conf
COPY ./srcs/index.html /www/index.html

RUN apk add openrc && rc-update add nginx default
RUN rc-status && touch /run/openrc/softlevel 

RUN apk add openssl
RUN openssl req -x509 -nodes -days 365 -subj "/C=CA/ST=QC/O=Company, Inc./CN=mydomain.com" -addext "subjectAltName=DNS:mydomain.com" -newkey rsa:2048 -keyout /etc/ssl/private/nginx-selfsigned.key -out /etc/ssl/certs/nginx-selfsigned.crt

RUN apk add openssh && rc-update add sshd default
COPY ./srcs/sshd_config /etc/ssh/sshd_config
RUN adduser -D testuser
RUN echo "testuser:1337" | chpasswd
RUN ssh-keygen -A
COPY ./srcs/testssh.html /home/testuser/testssh.html

COPY ./srcs/script.sh /script.sh
RUN chmod +x /script.sh

EXPOSE 80 443 22

CMD [ "sh", "script.sh" ]