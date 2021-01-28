# openrc
# touch /run/openrc/softlevel
# mkdir -p /run/nginx/
# nginx -g 'daemon off;'
rc-service nginx start
rc-service sshd start
while true;
do
    sleep 2
done
