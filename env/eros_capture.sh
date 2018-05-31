#!/bin/bash
# file: roslaunch.sh

source ~/env/ip_local.sh
source /opt/ros/kinetic/setup.bash
#source ~/reborn_ws/devel/setup.bash
source ~/workspace/install/setup.bash

roslaunch settings capture.launch
