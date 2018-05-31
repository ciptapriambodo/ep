#! /bin/bash

source /opt/ros/kinetic/setup.bash
source ~/workspace/install/setup.bash
echo ".. Running catkin build"
x=$1
cd ~/workspace/
catkin build $x
echo "done."
