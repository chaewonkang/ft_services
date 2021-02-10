echo "Strating Telegraf ... "
telegraf &>/dev/null &

#The grafana-server binary .tar.gz needs the working directory to be the root install directory where the binary and the public folder are located.
echo "Starting the grafana-server binary ..."
( ./grafana/bin/grafana-server -homepath ./grafana 1>/dev/null) &

sleep 3

while true;
do
	if ! pgrep telegraf 1>/dev/null;
	then
		echo "telegraf is not running !"
		exit 1
	else
		echo "telegraf is running !"
	fi
	if ! pgrep grafana-server 1>/dev/null; then
		echo "telegraf is not running !"
		exit 1
	else
		echo "grafana Service is running !"
	fi
	sleep 2
done

exit 0
