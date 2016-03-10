all: help

help:
	@echo ""
	@echo "-- Help Menu"
	@echo ""
	@echo "   1. make build            - build all images"
	@echo "   3. make clean            - remove all images"
	@echo ""

build:
	@docker build --tag=iai_kinect2:indigo-ros-cuda          indigo-ros-cuda/.
	@docker build --tag=iai_kinect2:libfreenect2           	 libfreenect2/.
	@docker build --tag=iai_kinect2:iai_kinect2           	 iai_kinect2/.

clean:
	@docker rmi -f iai_kinect2:indigo-ros-core
	@docker rmi -f iai_kinect2:libfreenect2
	@docker rmi -f iai_kinect2:iai_kinect2
