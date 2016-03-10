#!/bin/bash
# set -e

source /opt/ros/indigo/setup.bash

cd ~/catkin_ws/src

catkin_init_workspace

cd iai_kinect2
rosdep install -r --from-paths .

cd ../../
catkin_make -DCMAKE_BUILD_TYPE="Release"
