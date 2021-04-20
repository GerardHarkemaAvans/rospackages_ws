#!/bin/bash

echo "Installing realsence ros"

sudo apt-key adv --keyserver keys.gnupg.net --recv-key F6E65AC044F831AC80A06380C8B3A55A6F3EFCDE || sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-key F6E65AC044F831AC80A06380C8B3A55A6F3EFCDE In case the public key still cannot be retrieved, check and specify proxy settings: export http_proxy="http://<proxy>:<port>"
sudo add-apt-repository "deb https://librealsense.intel.com/Debian/apt-repo bionic main" -u
sudo apt-get update
sudo apt-get install librealsense2-dkms
sudo apt-get install librealsense2-utils



#export ROS_VER=$ROS_DISTRO
export ROS_VER=melodic 	

sudo apt update
sudo apt-get install ros-$ROS_VER-realsense2-camera -y
sudo apt-get install ros-$ROS_VER-realsense2-description -y


#git clone https://github.com/IntelRealSense/realsense-ros.git src/realsense-ros
#cd src/realsense-ros/
#git checkout `git tag | sort -V | grep -P "^2.\d+\.\d+" | tail -1`


#cd /etc/udev/rules.d/
#sudo wget https://raw.githubusercontent.com/IntelRealSense/librealsense/master/config/99-realsense-libusb.rules
#cd

#cd $HOME/rospackages_ws/


#catkin b
 
#source_text_find="rospackages_ws/devel/setup.bash"
#source_text="source ./rospackages_ws/devel/setup.bash"
#bashrc_file=$HOME/.bashrc
#echo $source_text
#echo $bashrc_file
#if grep -q $source_text_find $bashrc_file;then
#   echo "./rospackages_ws/devel/setup.bash already exists, not added to $HOME/.bashrc"
#else
#   sudo echo $source_text >> $bashrc_file
#   echo "./rospackages_ws/devel/setup.bash added to $HOME/.bashrc"
#fi

echo "Done installing"



