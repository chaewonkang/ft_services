# rc-service mariadb start
# mysql -u root < /query.sql
# while true;
# do
#     sleep 2
# done

if [ ! -f "/var/lib/mysql/ib_buffer_pool" ]; then
    echo "-------Install-------"
    /etc/init.d/mariadb setup
    rc-service mariadb start
    echo "--------setup--------"
    echo "CREATE DATABASE wordpress;" | mysql -u root
    echo "CREATE USER 'admin'@'%' IDENTIFIED BY 'admin';" | mysql -u root
    echo "grant all privileges on *.* to 'admin'@'%';" | mysql -u root
    echo "flush privileges;" | mysql -u root
    echo "-----------done----------"
    rc-service mariadb stop
fi

sed -i "s/skip-networking/# skip-networking/g" /etc/my.cnf.d/mariadb-server.cnf
rc-service mariadb start

while true;
do
    sleep 2
done