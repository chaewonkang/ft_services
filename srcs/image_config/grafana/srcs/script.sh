#The grafana-server binary .tar.gz needs the working directory to be the root install directory where the binary and the public folder are located.
echo "Starting the grafana-server binary ..."
./grafana/bin/grafana-server -homepath ./grafana/ & 

echo "Strating Telegraf ... "
telegraf

sleep 2

while true;
do
	if ! pgrep ./grafana/bin/grafana-server; then
		echo "grafana Service is not running !"
		exit 1
	fi
	if ! pgrep telegraf; then
		echo "telegraf is not running !"
		exit 1
	fi
	sleep 2
done

exit 0
