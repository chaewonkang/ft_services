echo "Strating Telegraf ..."
telegraf &

echo "Starting influxdb ..."
rc-service influxdb start

sleep 2

while true;
do
	if ! pgrep influx; then
		echo "InfluxDB is not running !"
		exit 1
	fi
	if ! pgrep telegraf; then
		echo "telegraf is not running !"
		exit 1
	fi
	sleep 2
done

exit 0