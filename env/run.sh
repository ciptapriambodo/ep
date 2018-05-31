#! /bin/bash

x=$1
case $x in
	local)
		screen -dmS eros_main ~/env/main_local.sh
	;;
	wifi)
		screen -dmS eros_main ~/env/main_wifi.sh
	;;
	*)
		echo ".. There is something wrong"
	;;
esac
sleep 3
echo "done."
