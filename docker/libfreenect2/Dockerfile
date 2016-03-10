FROM iai_kinect2:indigo-ros-cuda

# install bootstrap tools
RUN apt-get update && apt-get install -y \
    build-essential \
    cmake \
    pkg-config \
    wget \
    && rm -rf /var/lib/apt/lists/*

# install libfreenect2 dependencies
RUN apt-get update && apt-get install -y \
    libturbojpeg \
    libjpeg-turbo8-dev \
    libgl1-mesa-dri-lts-vivid \
    libopenni2-dev \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /root/

RUN git clone https://github.com/OpenKinect/libfreenect2.git \
  && cd libfreenect2 \
  && cd depends \
  && ./download_debs_trusty.sh \
  && dpkg -i debs/libusb*deb || true \
  && dpkg -i debs/libglfw3*deb || true \
  && apt-get install -f -y

RUN cd libfreenect2 \
  && mkdir build && cd build \
  && cmake .. -DCMAKE_INSTALL_PREFIX=$HOME/freenect2 -DENABLE_CXX11=ON \
  && make -j8 \
  && make install
