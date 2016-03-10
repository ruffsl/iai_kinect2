FROM iai_kinect2:libfreenect2

WORKDIR /root/

# clone project
RUN mkdir -p catkin_ws/src \
  && cd catkin_ws/src \
  && git clone https://github.com/code-iai/iai_kinect2.git

# build omnimapper ros wrapper
ADD build.sh catkin_ws/src/ros_caffe/build.sh
RUN ./catkin_ws/src/ros_caffe/build.sh
