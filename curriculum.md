# Part 1. Spatial AI Foundations : Sensor & Geometry
## 1. Sensor & Data Processing 
- RGB Image & Depth Image Structure
    - Channel, Height, Width (C, H, W)의 순서와 의미
        - cv2를 사용할 때, torch를 사용할 때에는 이 순서가 어떻게 되는지 조사
    - Depth map의 데이터 타입 (uint16, float)과 Scale Factor 이해

- Pinhole Camera Model
    - Instinsic Parameter($f_{x}, f_{y}, c_{x}, c_{y}$)의 개념과 이미지 형성에 미치는 영향
        - Extrinsic Parameter의 개념과 사용하는 이유에 대해서
    - Camera Coordinate System의 이해
        - 보통 로봇 좌표계는 전방이 X, 왼쪽이 Y, 높이가 Z축이 되도록 사용함 **(Right hand Rule)**
    - 2D Depth Image를 3D Point Cloud로 변환하는 방법
        - 어떤 수식을 사용해서 변환하는지
        - 이때 2D depth값을 어떻게 사용하는지, 차원 변환이 어떻게 일어나는지, 좌표계가 어떻게 변환되는지, 변환된 3D Point Cloud의 X, Y, Z축은 어떻게 되는지 분석

    ### Mission 1
    - 직접 카메라를 연결해서 해당 카메라로 RGB-D Image를 저장해서 사용
    - 저장한 RGB-D 이미지를 Intrinsic parameter를 적용해 3D Point Cloud로 변환하는 파이썬 코드를 작성
    - 변환된 Point Cloud를 `matplotlib 3D scatter`로 시각화한 결과물 제시
    - 수식 $X = (u-c_x)Z/f_x$에서 $f_x$(초점거리)가 커지거나 작아지면 3D 점들이 어떻게 퍼지거나 모이는지 설명

### **Advanced**
- Advanced Concepts
    - Computer Vision에서 말하는 Feature라는 개념이 무엇인지, 그리고 왜 중요한지, 어디에 사용되는지 상세하게 조사!
    - Edge는 Feature의 관점에서 어떻게 정의할 수 있는지, 그리고 어떻게 찾아내는지
    - Upsampling과 Downsampling의 개념과 무엇을 위한 연산인지, 어떤 알고리즘이 있는지, 그리고 대부분 뭐를 위해서 어떤 장점이 있길래 사용하는 것인지 조사

- Thinking Topic
    - `cv2.resize`와 같이 이미지 크기를 카메라의 이미지 크기와 다르게 사용하는 이유에 대해서 생각해보기, 그리고 어떻게 알고리즘이 동작하게 되는건지 (**정보**의 관점에서)
        - 만약 화질을 떨어뜨린다면, 정보가 손실될텐데 이 손실을 감수하는 이유
        - 반대로 화질을 올린다면, 정보가 어떻게 될지, 그리고 어떤 문제가 발생할지
    - 좋은 Depth camera로 평평한 벽면을 바라본 경우에도, 결과값은 울퉁불퉁한 경우가 대부분인데 이 이유에 대해서 간략하게 (Noise)
    - Noise와 같은 문제를 해결하기 위해서는 어떻게 해야하는지 생각해보기 (어떤 필터를 사용하는지, 사용하는 이유, 그리고 장단점에 대해서)

- Vectorization
    - CPU와 GPU의 연산차이에 대한 근본적인 이유
    - torch와 cuda의 장점 및 이를 사용하는 이유와 파이썬을 사용해도 빠른 연산을 기대할 수 있는 이유 분석 (for문을 가능하면 사용하지 않는게 좋은 이유)

- Physical Sensor Misalignment
    - 실제 카메라에서 RGB 카메라와 Depth 센서의 물리적인 위치 차이로 인해 발생하는 문제와 원인 분석 (Occlusion, Viewpoint 차이)
    - 왜 Realsense 카메라를 ros2로 실행할 때 align 모드가 따로 존재하는지, 그리고 어떻게 동작하는지 방법론만 이해하고 분석

## 2. Geometry & Spatial Transform
- Coordinate Systems (Frame):
    - Camera Frame vs Body Frame (Base link) vs World Frame (Map)
    - Local 좌표와 Global 좌표의 차이

- Rigid Body Transformation:
    - Rotation Matrix ($3\times3$)와 Translation Vector ($3\times1$).
    - Homogeneous Coordinates ($4\times4$ Matrix)를 사용하는 이유 (행렬 곱으로 통일)

- Practical Representations:
    - Euler Angle (Roll, Pitch, Yaw)의 직관적 이해와 한계(Gimbal Lock - 개념 중심으로 이해에 초점)
    - Quaternion ($x, y, z, w$) - ROS2에서 회전을 표현하는 표준 방식임을 인지
    
    ### Mission 2 (로봇 팔 끝의 카메라)
    - Mission 1에서 만든 Point Cloud에 임의의 Transformation Matrix (회전+이동)를 곱해 위치를 이동시켜 시각화.
    - 행렬 곱셈 순서($T \cdot P$ vs $P \cdot T$)에 따라 결과가 어떻게 달라지는지, 왜 우리는 보통 $P_{global} = T_{local\_to\_global} \cdot P_{local}$ 순서를 쓰는지 설명.


