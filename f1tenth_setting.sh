# Build Dependecies
sudo vi /etc/apt/sources.list +%s/ports.ubuntu.com/mirror.yuki.net.uk +wq!
sudo apt update && sudo apt-get upgrade -y
sudo apt-get install -qq -y --no-install-recommends bash-completion bc can-utils command-not-found emacs freeglut3-dev gstreamer1.0-alsa gstreamer1.0-libav gstreamer1.0-plugins-bad gstreamer1.0-plugins-base gstreamer1.0-plugins-good gstreamer1.0-plugins-ugly gstreamer1.0-tools i2c-tools iproute2 iputils-ping iw kbd kmod language-pack-en-base libapt-pkg-dev libcanberra-gtk3-module mesa-utils mtd-utils parted pciutils python3-pexpect sox tmux vulkan-tools wireless-tools swig 
sudo rm -rf /var/lib/apt/lists/*

# ROS2 Install
sudo apt-get update && sudo apt-get install -y --no-install-recommends \
    ros-humble-robot-state-publisher* \
    ros-humble-joint-state-publisher* \
    ros-humble-xacro \
    ros-humble-slam-toolbox \
    ros-humble-ompl \
    ros-humble-imu-tools \
    lcov \
    libxtensor-dev \
    libgflags-dev \
    nlohmann-json3-dev \
    ros-dev-tools \
    ros-humble-cartographer \
    ros-humble-cartographer-rviz \
    ros-humble-diagnostic-updater \
    libgraphicsmagick++1-dev \
    graphicsmagick-libmagick-dev-compat \
    ros-humble-cyclonedds \
    ros-humble-rmw-cyclonedds-cpp \
    ros-humble-behaviortree-cpp-v3 \
    ros-humble-ament* \
    &&  rm -rf /var/lib/apt/lists/*

# VECS Tool Download
sudo apt-get install -y flatpak
sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
flatpak install flathub com.vesc_project.VescTool -y -y -y
flatpak run com.vesc_project.VescTool

# build f1tenth ws
sudo apt-get install libasio-dev
sudo apt install ros-humble-io-context
sudo apt install ros-humble-asio-cmake-module