#! /bin/bash
FILE="current.tmp"
x=$1
cd ~/workspace/install/share/launch/config
CURRENT_DIR=`cat current.tmp`

if [ $x == $CURRENT_DIR ]
then
	echo ".. Nothing to do.."
else
	cd ~/cwm
	case $CURRENT_DIR in
		dark)
		cp config_xs0.yaml ~/param/calibration/dark/config_xs0.yaml
		;;
		light)
		cp config_xs0.yaml ~/param/calibration/light/config_xs0.yaml
		;;
	esac
	cd ~/param/calibration
	case $x in
		dark)
		echo "dark" > $FILE
		cd ~/param/calibration/dark
		;;
		light)
		echo "light" > $FILE
		cd ~/param/calibration/light
		;;
	esac
	cp config_xs0.yaml ~/workspace/install/share/launch/config/config_xs0.yaml
	echo ".. Change Finished.."
fi
