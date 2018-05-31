#! /bin/bash
# file: echo.sh
source ~/env/ip_local.sh
source /opt/ros/kinetic/setup.bash
source ~/workspace/install/setup.bash

rostopic echo /it_debug
