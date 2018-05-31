#! /bin/bash

source ~/env/ip_local.sh
source /opt/ros/kinetic/setup.bash
#source ~/reborn_ws/devel/setup.bash
source ~/workspace/install/setup.bash

x=$1
case $x in
	all)
		echo ".. Performing Checkup All.."
		rosrun settings serial_checkup
		;;
	serial)
		echo ".. Performing Serial Checkup.."
		rosrun settings serial_checkup
		;;
	*)
		echo ".. There is something wrong."
		;;
esac
echo "done."
