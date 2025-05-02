# Basic Errors
### ‘GLIBCXX_3.4.30’ not found
conda environment에서 rclpy를 import할 때 발생함
```bash
conda install -c conda-forge gcc=12.1.0

rm /home/$USER/anaconda3/bin/../lib/libstdc++.so.6
cp /usr/lib/x86_64-linux-gnu/libstdc++.so.6.0.30 /home/$USER/anaconda3/bin/../lib 
ln -s /home/$USER/anaconda3/bin/../lib/libstdc++.so.6.0.30 /home/$USER/anaconda3/bin/../lib/libstdc++.so.6
```

### 깃허브에 이미지 사이즈 조절해서 올리는 방법 예시
<p>
  <img src="../config/gpu_compatibility.png" align="center" width="49%">
  <img src="../config/cuda_compatibility.png" align="center" width="49%">
  <figcaption align="center">2개 이미지 띄우기</figcaption>
</p>