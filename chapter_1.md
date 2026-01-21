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