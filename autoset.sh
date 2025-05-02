sudo vi /etc/apt/sources.list +%s/kr.archive.ubuntu.com/mirror.kakao.com +wq!
sudo vi /etc/apt/sources.list +%s/security.ubuntu.com/mirror.kakao.com +wq!
sudo vi /etc/apt/sources.list +%s/ports.ubuntu.com/mirror.yuki.net.uk +wq!
sudo add-apt-repository ppa:graphics-drivers/ppa -y
sudo apt update
sudo apt install fonts-noto-cjk-extra gnome-user-docs-ko hunspell-ko ibus-hangul language-pack-gnome-ko language-pack-ko hunspell-en-gb hunspell-en-au hunspell-en-ca hunspell-en-za -y
ibus restart
sudo apt update && sudo apt upgrade -y
sudo apt install nvidia-driver-535 -y
sudo apt install software-properties-common -y
sudo add-apt-repository universe -y
sudo apt update && sudo apt install curl -y
sudo curl -sSL https://raw.githubusercontent.com/ros/rosdistro/master/ros.key -o /usr/share/keyrings/ros-archive-keyring.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/ros-archive-keyring.gpg] http://packages.ros.org/ros2/ubuntu $(. /etc/os-release && echo $UBUNTU_CODENAME) main" | sudo tee /etc/apt/sources.list.d/ros2.list > /dev/null
sudo apt update && sudo apt upgrade -y
sudo apt install ros-humble-desktop-full -y
source /opt/ros/humble/setup.bash
sudo apt install ros-humble-turtlebot4-desktop -y
echo "source /opt/ros/humble/setup.bash" >> ~/.bashrc
source ~/.bashrc
sudo apt-get install python3-rosdep -y
sudo rosdep init
rosdep update
sudo apt install ~nros-humble-rqt* -y
sudo apt install python3-colcon-common-extensions build-essential cmake git ros-humble-image-transport-plugins python3-pip pv -y
sudo apt-get install ros-humble-gazebo-msgs ros-humble-gazebo-plugins ros-humble-gazebo-ros ros-humble-gazebo-ros2-control ros-humble-gazebo-ros-pkgs ros-humble-teleop-twist-keyboard -y
sudo apt install ros-humble-octomap-ros libgoogle-glog-dev libgflags-dev -y
printenv | grep -i ROS_DISTRO

echo "# colcon_cd Setting " >> ~/.bashrc
echo "source /usr/share/colcon_cd/function/colcon_cd.sh" >> ~/.bashrc
echo "export _colcon_cd_root=/opt/ros/humble/" >> ~/.bashrc
echo "source /usr/share/colcon_argcomplete/hook/colcon-argcomplete.bash" >> ~/.bashrc
echo "" >> ~/.bashrc

sudo apt install python3-bloom python3-rosdep fakeroot debhelper dh-python -y
sudo rosdep init
rosdep update

echo "alias eb='gedit ~/.bashrc'" >> ~/.bashrc
echo "alias sb='source ~/.bashrc'" >> ~/.bashrc
echo "alias up='sudo apt update'" >> ~/.bashrc
NUM_THREADS=$(lscpu | grep '^CPU(s):' | awk '{print $2}')
echo "alias cb='colcon build --parallel-workers $NUM_THREADS --cmake-args -DCMAKE_BUILD_TYPE=Release'" >> ~/.bashrc
echo "export RMW_IMPLEMENTATION=rmw_fastrtps_cpp" >> ~/.bashrc
echo "export ROS_DOMAIN_ID=0" >> ~/.bashrc
echo "" >> ~/.bashrc
source ~/.bashrc

echo "# ipfrag Setting " >> ~/.bashrc
echo "# sudo sysctl net.ipv4.ipfrag_time=3" >> ~/.bashrc
echo "# sudo sysctl net.ipv4.ipfrag_high_thresh=134217728" >> ~/.bashrc
echo "" >> ~/.bashrc
eval "$(cat ~/.bashrc | tail -n +10)"
echo "Type 'source ~/.bashrc' to apply settings"

sudo apt install axel terminator ros-humble-rmw-fastrtps-cpp* ros-humble-rmw-cyclonedds-cpp* -y

# chrome deb file download
axel https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb

# CUDA 11.8 Download
axel https://developer.download.nvidia.com/compute/cuda/11.8.0/local_installers/cuda_11.8.0_520.61.05_linux.run

# Anaconda Download
axel https://repo.anaconda.com/archive/Anaconda3-2024.02-1-Linux-x86_64.sh

# 내 구글 드라이브에서 cudnn 8.7.0 다운
pip3 install gdown
gdown https://drive.google.com/uc?id=1pYPJpHcAWYk2xKw6qsXFS_hn0kS3bV9x

# CUDA 11.8 Installation
sudo sh cuda_11.8.0_520.61.05_linux.run
echo 'export PATH="/usr/local/cuda-11.8/bin:$PATH"' >> ~/.bashrc
echo 'export LD_LIBRARY_PATH="/usr/local/cuda-11.8/lib64:$LD_LIBRARY_PATH"' >> ~/.bashrc

# cuDNN 8.7.0 Installation
tar -xvf cudnn-linux-x86_64-8.7.0.84_cuda11-archive.tar.xz && sudo rm -rf cudnn-linux-x86_64-8.7.0.84_cuda11-archive.tar.xz
sudo cp cudnn-linux-x86_64-8.7.0.84_cuda11-archive/include/cudnn* /usr/local/cuda-11.8/include
sudo cp cudnn-linux-x86_64-8.7.0.84_cuda11-archive/lib/libcudnn* /usr/local/cuda-11.8/lib64
sudo chmod a+r /usr/local/cuda-11.8/include/cudnn.h /usr/local/cuda-11.8/lib64/libcudnn*

sudo ln -sf /usr/local/cuda-11.8/targets/x86_64-linux/lib/libcudnn_adv_train.so.8.7.0 /usr/local/cuda-11.8/targets/x86_64-linux/lib/libcudnn_adv_train.so.8
sudo ln -sf /usr/local/cuda-11.8/targets/x86_64-linux/lib/libcudnn_ops_infer.so.8.7.0 /usr/local/cuda-11.8/targets/x86_64-linux/lib/libcudnn_ops_infer.so.8
sudo ln -sf /usr/local/cuda-11.8/targets/x86_64-linux/lib/libcudnn_cnn_train.so.8.7.0 /usr/local/cuda-11.8/targets/x86_64-linux/lib/libcudnn_cnn_train.so.8
sudo ln -sf /usr/local/cuda-11.8/targets/x86_64-linux/lib/libcudnn_adv_infer.so.8.7.0 /usr/local/cuda-11.8/targets/x86_64-linux/lib/libcudnn_adv_infer.so.8
sudo ln -sf /usr/local/cuda-11.8/targets/x86_64-linux/lib/libcudnn_ops_train.so.8.7.0 /usr/local/cuda-11.8/targets/x86_64-linux/lib/libcudnn_ops_train.so.8
sudo ln -sf /usr/local/cuda-11.8/targets/x86_64-linux/lib/libcudnn_cnn_infer.so.8.7.0 /usr/local/cuda-11.8/targets/x86_64-linux/lib/libcudnn_cnn_infer.so.8
sudo ln -sf /usr/local/cuda-11.8/targets/x86_64-linux/lib/libcudnn.so.8.7.0 /usr/local/cuda-11.8/targets/x86_64-linux/lib/libcudnn.so.8

sudo ldconfig

ldconfig -N -v $(sed 's/:/ /' <<< $LD_LIBRARY_PATH) 2>/dev/null | grep libcudnn

cat /usr/local/cuda-11.8/include/cudnn_version.h | grep CUDNN_MAJOR -A 2

# PyTorch Installation
pip install --upgrade pip
pip install setuptools==58.2.0
pip install numpy matplotlib pandas scikit-learn opencv-python
pip install torch==2.2.0 torchvision==0.17.0 torchaudio==2.2.0 --index-url https://download.pytorch.org/whl/cu118

# Anaconda Installation
# sha256sum Anaconda3-2024.02-1-Linux-x86_64.sh
# bash Anaconda3-2024.02-1-Linux-x86_64.sh
source ~/.bashrc

sudo reboot