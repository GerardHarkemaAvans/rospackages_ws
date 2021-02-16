#!/bin/bash

echo "Installing realsence ros"


#export ROS_VER=$ROS_DISTRO
export ROS_VER=melodic 	

sudo apt update
sudo apt-get install ros-$ROS_VER-realsense2-camera -y
sudo apt-get install ros-$ROS_VER-realsense2-description -y

#cd /etc/udev/rules.d/
#sudo wget https://raw.githubusercontent.com/IntelRealSense/librealsense/master/config/99-realsense-libusb.rules
#cd

echo "Done installing"



