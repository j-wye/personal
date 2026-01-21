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