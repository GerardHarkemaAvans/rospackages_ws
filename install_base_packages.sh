#!/bin/bash

echo "Installing ROS Tools"
sudo apt install 	python-catkin-tools \
		ros-melodic-moveit \
		joint-state-publisher \
		ros-melodic-joint-state-publisher-gui \
		ros-melodic-rqt-joint-trajectory-controller\
		ros-melodic-ros-control \
		ros-melodic-ros-controllers \
		gazebo9-plugin-base \
		libignition-math4 \
		libsdformat6 \
		libsdl-image1.2-dev \
		libnlopt-dev \
		ros-melodic-flexbe-behavior-engine \
		-y

DOWNLOAD_DIRECTORY=downloads
PACKAGE_DIRECTORY=src

mkdir $DOWNLOAD_DIRECTORY
mkdir $PACKAGE_DIRECTORY


#flexbe app
echo "Installing Flexbe"
DIRECTORY=$PACKAGE_DIRECTORY/flexbe_app
if [ ! -d  "$DIRECTORY" ]; then
	git clone https://github.com/FlexBE/flexbe_app.git $PACKAGE_DIRECTORY/flexbe_app
fi

#rm -r DOWNLOAD_DIRECTORY

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



