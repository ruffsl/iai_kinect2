FROM iai_kinect2:libfreenect2

WORKDIR /root/

# clone project
RUN mkdir -p catkin_ws/src \
  && cd catkin_ws/src \
  && git clone https://github.com/code-iai/iai_kinect2.git

# rosdeb
ADD rosdeb.bash catkin_ws/src/iai_kinect2/rosdeb.bash
RUN ./catkin_ws/src/iai_kinect2/rosdeb.bash

# build
ADD build.bash catkin_ws/src/iai_kinect2/build.bash
RUN ./catkin_ws/src/iai_kinect2/build.bash
