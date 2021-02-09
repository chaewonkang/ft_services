echo "Strating Telegraf ... "
telegraf &

echo "service nginx start ... "
rc-service nginx start

echo "service php-fpm7 start ... "
rc-service php-fpm7 start

sleep 2

while true;
do
        var_nginx=`service nginx status | grep -c 'stopped'`
        var_php=`service php-fpm7 status | grep -c 'stopped'`
        if [ $var_nginx -eq 1 ]
        then
                echo "nginx service stopped"
                exit 1
        fi
        if [ $var_php -eq 1 ]
        then
                echo "php-fpm7 service stopped"
                exit 1
        fi
        if ! pgrep telegraf; then
		echo "telegraf is not running !"
		exit 1
        fi
        sleep 2
done

exit 0