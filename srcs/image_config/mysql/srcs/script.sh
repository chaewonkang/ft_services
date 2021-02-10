echo "Strating Telegraf ... "
telegraf &

if [ ! -f "/var/lib/mysql/ib_buffer_pool" ]; then
    echo "-------Install-------"
    /etc/init.d/mariadb setup
    rc-service mariadb start
    echo "--------setup--------"
    echo "CREATE DATABASE wordpress;" | mysql -u root
    echo "CREATE USER 'admin'@'%' IDENTIFIED BY 'admin';" | mysql -u root
    echo "grant all privileges on *.* to 'admin'@'%';" | mysql -u root
    echo "flush privileges;" | mysql -u root
    mysql -u root wordpress < wordpress.sql
    echo "-----------done----------"
    rc-service mariadb stop
fi


sed -i "s/skip-networking/# skip-networking/g" /etc/my.cnf.d/mariadb-server.cnf
rc-service mariadb start

sleep 2

while true;
do
    if ! pgrep telegraf 1>/dev/null; then
		echo "telegraf is not running !"
		exit 1
	else
		echo "telegraf is running !"
	fi
    if ! pgrep mysql 1>/dev/null; then
	    echo "mariadb is not running !"
	    exit 1
    else
        echo "mariadb is running !"
    fi
    sleep 2
done

exit 0