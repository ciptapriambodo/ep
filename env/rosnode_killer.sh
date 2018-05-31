#!/bin/bash
# file: rosnode_killer.sh

source /opt/ros/kinetic/setup.bash
#source ~/reborn_ws/devel/setup.bash
source ~/workspace/install/setup.bash

rosnode kill -a
