#! /bin/bash

x=$1
case $x in
	ai)
		echo ".. Opening AI-Files"
		cd ~/workspace/src/eros_platform/eros/src/intelligent/
		rmate eheader.h
		rmate main.cpp
		rmate motion.cpp
		rmate tactic.cpp
		rmate strategy.cpp
		rmate thread.cpp
		rmate utility.cpp
		rmate variable.cpp
		;;
	serial)
		echo ".. Opening Serial"
		cd ~/workspace/src/eros_platform/eros/src/serial/
		rmate serialcom.cpp
		;;
	param_robot)
		echo ".. Opening Robot Parameter-Files"
		cd ~/workspace/src/eros_platform/eros/
		rmate odometry_correction.yaml
		rmate robot_position.yaml
		;;
	param_settings)
		echo ".. Opening Settings Parameter-Files"
		cd ~/workspace/src/eros_platform/settings/
		rmate camera_setting.yaml
		;;
	param)
		echo ".. Opening Settings Param-Files"
		cd ~/param/
		rmate intelligent_parameters.yaml
		;;
	referee)
		echo ".. Opening Settings Referee-Files"
		cd ~/workspace/src/eros_platform/eros/src/referee/
		rmate referee.cpp
		#rmate refereeBox.cpp
		cd ~/workspace/src/eros_platform/eros/src/communication/
		rmate clientrec.cpp
		;;
	*)
		echo ".. There is something wrong."
		;;
esac
echo "done."
