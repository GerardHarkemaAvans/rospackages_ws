#!/bin/bash


DOWNLOAD_DIRECTORY=downloads
PACKAGE_DIRECTORY=src

mkdir $DOWNLOAD_DIRECTORY
mkdir $PACKAGE_DIRECTORY


# Universal Robots
echo "Installing Universal Robot"


# retrieve the sources (replace '$ROS_DISTRO' with the ROS version you are using)
git clone -b $ROS_DISTRO-devel https://github.com/ros-industrial/universal_robot.git src/universal_robot


# checking dependencies (again: replace '$ROS_DISTRO' with the ROS version you are using)
rosdep update
rosdep install --rosdistro $ROS_DISTRO --ignore-src --from-paths src


cd $HOME/rospackages_ws/

catkin b

source_text_find="rospackages_ws/devel/setup.bash"
source_text="source ./rospackages_ws/devel/setup.bash"
bashrc_file=$HOME/.bashrc
echo $source_text
echo $bashrc_file
if grep -q $source_text_find $bashrc_file;then
   echo "./rospackages_ws/devel/setup.bash already exists, not added to $HOME/.bashrc"
else
   sudo echo $source_text >> $bashrc_file
   echo "./rospackages_ws/devel/setup.bash added to $HOME/.bashrc"
fi
 

echo "Done installing"



