#! /bin/bash

source /opt/ros/kinetic/setup.bash
source ~/reborn_ws/devel/setup.bash
echo ".. Running catkin_make"
cd ~/reborn_ws/
catkin_make
echo "done."
