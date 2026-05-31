## 3. Mapping & SLAM Fundamentals
- 3D LiDAR & Point Cloud Data
    - 3D LiDAR의 거리 측정 방식과 카메라와의 정밀도 비교 (간단하게만)
    - LiDAR의 Point Cloud는 Camera의 Point Cloud와 뭐가 다른지

- Spatial Discretization
    - Discretization 이란 무엇인지 그리고 왜 이 방식을 사용하는지, grid와 voxel의 개념에 대해서, 그리고 왜 이렇게 지도를 작성하는지
    - Resolution의 개념에 대해서, 정밀한 지도를 만들기 위해 resolution이 중요한데 왜 항상 최고의 resolution을 사용하지 않는지 (메모리 및 연산량 관점에서)

- Occupancy Grid Map
    - 각 공간에 대한 정보를 기록하는 방식 중 하나인 Occupancy grid에 대한 설명 : 데이터를 어떻게 저장하는지 (Occupied와 Free로 이분법으로 데이터를 저장하지 않는 이유)

- SLAM & Drift
    - 로봇의 거리 측정 방식과 Odometry의 개념에 대해서, Drift 개념에 대해서
    - 오차가 누적되는 원인에 대해서 (간단하게 원인을 위주로만)
    - Loop Closure의 개념에 대해서, 그리고 어떻게 오차를 교정하는지 (내용이 어려울만 해서, 공식과 개념을 사용한 정석 설명이 아니라 본인이 이해한대로만 설명할 것)