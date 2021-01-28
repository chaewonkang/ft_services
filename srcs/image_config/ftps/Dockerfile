FROM alpine:latest

RUN apk update && apk add openrc && apk add vsftpd
RUN rc-update add vsftpd default

COPY ./srcs/vsftpd.conf /etc/vsftpd/vsftpd.conf

RUN echo -e "1337\n1337" | adduser testuser

RUN echo "testuser" | tee -a /etc/vsftpd.userlist

RUN apk add openssl
RUN openssl req -x509 -nodes -days 365 -subj "/C=CA/ST=QC/O=Company, Inc./CN=mydomain.com" -addext "subjectAltName=DNS:mydomain.com" -newkey rsa:2048 -keyout /etc/ssl/private/vsftpd.pem -out /etc/ssl/private/vsftpd.pem

COPY ./srcs/script.sh /script.sh
RUN chmod +x /script.sh

EXPOSE 21
CMD sh script.sh

