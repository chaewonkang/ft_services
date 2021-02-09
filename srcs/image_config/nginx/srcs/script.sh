echo "Strating Telegraf ... "
telegraf &

echo "service nginx start ... "
rc-service nginx restart

echo "service sshd start ... "
rc-service sshd start

sleep 2

while true;
do
        var_nginx=`service nginx status | grep -c 'stopped'`
        var_sshd=`service sshd status | grep -c 'stopped'`        
        if [ $var_nginx -eq 1 ]
        then
                echo "nginx service stopped"
                exit 1
        fi
        if [ $var_sshd -eq 1 ]
        then
                echo "sshd service stopped"
                exit 1
        fi
        if ! pgrep telegraf; then
		echo "telegraf is not running !"
		exit 1
        fi
        sleep 2
done

exit 0
