#! /bin/bash

x=$1
echo "Stopping EROS Platform.."
pkill eros_$x
sleep 3
echo "done."
