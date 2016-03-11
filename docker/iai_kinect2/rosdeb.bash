#!/bin/bash
# set -e

source /opt/ros/indigo/setup.bash

cd ~/catkin_ws/src

cd iai_kinect2
rosdep install -r -y --from-paths .
