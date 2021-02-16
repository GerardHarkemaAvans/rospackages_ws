#!/bin/bash


DOWNLOAD_DIRECTORY=downloads
PACKAGE_DIRECTORY=src

mkdir $DOWNLOAD_DIRECTORY
mkdir $PACKAGE_DIRECTORY

#git clone https://github.com/UniversalRobots/Universal_Robots_ROS_Driver.git $PACKAGE_DIRECTORY/universal_robot

# Universal Robots
echo "Installing Universal Robot"
UNIVERSAL_ROBOT_FILE=$DOWNLOAD_DIRECTORY/universal_robots/melodic-devel.zip
UNIVERSAL_ROBOT_PACKAGES="ur_bringup ur_description ur_gazebo"
if [ ! -f "$UNIVERSAL_ROBOT_FILE" ]; then
    wget https://github.com/ros-industrial/universal_robot/archive/melodic-devel.zip -P $DOWNLOAD_DIRECTORY/universal_robots

fi

DIRECTORY=$PACKAGE_DIRECTORY/universal_robot-melodic-devel
if [ ! -d  "$DIRECTORY" ]; then
	unzip $DOWNLOAD_DIRECTORY/universal_robots/melodic-devel.zip -d $PACKAGE_DIRECTORY/universal_robot-melodic-devel 
fi


cd $HOME/rospackages_ws/

#catkin b


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



