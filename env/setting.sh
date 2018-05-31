#! /bin/bash

source ~/env/ip_local.sh
source /opt/ros/kinetic/setup.bash
#source ~/reborn_ws/devel/setup.bash
source ~/workspace/install/setup.bash

pkill roscore
pkill eroscore
screen -dmS eroscore ~/env/roscore.sh

sleep 3

x=$1
case $x in
	vision)
		echo ".. Performing Vision Calibration.."
		rosrun settings vkalib
		;;
	calibration)
		echo ".. Performing Calibration"
		roslaunch calibration calibration_camera_v4l2.launch
		;;
	kepala)
		echo ".. Performing Kepala Calibration.."
		roslaunch settings kepala.launch
		;;
	capture)
		echo ".. Performing Capture"
		roslaunch settings capture.launch
		;;
	camera)
		echo ".. Performing Camera Setting.."
		#roslaunch settings camera_c920.launch
		guvcview
		;;
	ball)	echo ".. Performing Show Ball.."
		rosrun eros vision show ball
		;;
	*)
		echo ".. There is something wrong."
		;;
esac
echo "done."
