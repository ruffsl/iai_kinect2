#!/bin/sh

xhost +local:root
GPU=0

nvidia-docker \
  run \
	-it \
	--env="DISPLAY" \
	--env="QT_X11_NO_MITSHM=1" \
	--volume="/tmp/.X11-unix:/tmp/.X11-unix:rw" \
  iai_kinect2:iai_kinect2 bash

xhost -local:root
