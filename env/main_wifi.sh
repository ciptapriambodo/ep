#!/bin/bash
# file: roslaunch.sh
source ~/env/ip_wifi.sh
source /opt/ros/kinetic/setup.bash
#source ~/reborn_ws/devel/setup.bash
source ~/workspace/install/setup.bash

#export ROS_IP=10.42.43.2
#export ROS_HOSTNAME=10.42.43.2
#export ROS_MASTER_URI=http://10.42.43.2:11311

#export ROS_IP=127.0.0.1
#export ROS_HOSTNAME=127.0.0.1
#export ROS_MASTER_URI=http://127.0.0.1:11311
roslaunch eros eros_main_cli.launch
