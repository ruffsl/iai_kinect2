#!/bin/bash
# set -e

source /opt/ros/indigo/setup.bash

cd ~/catkin_ws/src

catkin_init_workspace

cd ..

catkin_make -DCMAKE_BUILD_TYPE="Release" -Dfreenect2_DIR=/root/freenect2/lib/cmake/freenect2
