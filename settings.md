# User PC Auto Setup with Ubuntu 22.04
### Environment
```
Ubuntu 22.04 humble
nvidia-driver-525
CUDA 11.8
cuDNN 8.7
```

### Auto Setup for all of CUDA, cuDNN v8.7.0 and Anaconda
```bash
wget https://raw.githubusercontent.com/j-wye/j-wye.github.io/main/autoset.sh
bash autoset.sh
source ~/.bashrc
```

### Only Ubuntu PC Auto Setup (include Chrome and Anaconda download)
```bash
wget https://raw.githubusercontent.com/j-wye/j-wye.github.io/main/basic_autoset.sh
bash basic_autoset.sh
source ~/.bashrc
```

### Check your GPU and CUDA Compatibility
Before if you want to use tensorflow, check follow figure and check CUDA, cuDNN version

<img src="./image/tensorflow_compatibility.png">

First, you have to check your [GPU and CUDA compatibility](https://www.wikiwand.com/en/CUDA#GPUs_supported)

<img src="./image/gpu_compatibility.png" width="480" height="360"><img src="./image/cuda_compatibility.png" width="480" height="360">

And then choose which [CUDA version](https://developer.nvidia.com/cuda-toolkit-archive) you want to install. And follows:
```bash
# if CUDA 11.8
axel https://developer.download.nvidia.com/compute/cuda/11.8.0/local_installers/cuda_11.8.0_520.61.05_linux.run
sudo sh cuda_11.8.0_520.61.05_linux.run

# if CUDA 12.0
axel https://developer.download.nvidia.com/compute/cuda/12.0.1/local_installers/cuda_12.0.1_525.85.12_linux.run
sudo sh cuda_12.0.1_525.85.12_linux.run

# if CUDA 12.2
axel https://developer.download.nvidia.com/compute/cuda/12.2.2/local_installers/cuda_12.2.2_535.104.05_linux.run
sudo sh cuda_12.2.2_535.104.05_linux.run
```

And you have to set follows like cuda-11.8:
```bash
echo 'export PATH="/usr/local/cuda-${version}/bin:$PATH"' >> ~/.bashrc
echo 'export LD_LIBRARY_PATH="/usr/local/cuda-${version}/lib64:$LD_LIBRARY_PATH"' >> ~/.bashrc
```

### Pytorch Installation
check your ***cuda version*** and choose [***pytorch version***](https://pytorch.org/get-started/previous-versions/) and download

### Download cuDNN
If you use Tensorflow, find cuDNN version over [here](./settings.md/#check-your-gpu-and-cuda-compatibility) and check which version you have to download, and then go this [website](https://developer.nvidia.com/rdp/cudnn-archive) and download.

For example, if you download cuDNN 8.7.0 follows:
```bash
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
```
If you download another version for CUDA and cuDNN, change version and enter above in terminal. When you enter 
`cat /usr/local/cuda-11.8/include/cudnn_version.h | grep CUDNN_MAJOR -A 2`, this display your cuDNN version, then all settings are over.

### Conda Environment Settings
Check Anaconda Version which you want and copy [here](https://repo.anaconda.com/archive/) and follows:
```bash
axel https://repo.anaconda.com/archive/${copy version full name.sh}
bash ${copy version full name.sh}
source ~/.bashrc
```