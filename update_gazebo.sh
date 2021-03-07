#!/bin/bash



# Gazebo
echo "Update gazebo"

sudo sh -c 'echo "deb http://packages.osrfoundation.org/gazebo/ubuntu-stable `lsb_release -cs` main" > /etc/apt/sources.list.d/gazebo-stable.list'
wget https://packages.osrfoundation.org/gazebo.key -O - | sudo apt-key add -
sudo apt update
sudo apt upgrade

sudo apt install ros-melodic-ros-control* ros-melodic-control* ros-melodic-gazebo-ros-control*

echo "Done installing"



