x=$(hostname -I|cut -f2 -d ' ')
export ROS_MASTER_URI=http://127.0.0.1:11311
export ROS_IP=$x
export ROS_HOSTNAME=$x
