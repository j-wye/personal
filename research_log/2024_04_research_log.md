#### 2024-04-07
- gazebo_project를 만들고 ADC (Autonomous Driving Car) 프로젝트 시작 [🔗](https://github.com/j-wye/gazebo_project/tree/main/ADC)
- robot core와 depth camera, 2d lidar 까지 설정 완료

#### 2024-04-11
- Ubuntu 22.04 Autoinstall [github page](https://github.com/j-wye/j-wye.github.io) 정리

#### 2024-04-12
- DROID-SLAM을 turtlebot4에서 ros2 통신으로 사용해 보기 위해 진행 [🔗](https://github.com/j-wye/droid_slam/blob/main/README.md#droid-slam)
- usb webcam으로 실시간으로 진행하기 위한 코드 : demo_monocular.py
- turtlebot4와 연결해 ros2 communication으로 진행하기 위한 코드 : demo_serial.py

#### 2024-04-13
- 연구주제에 대해서 생각
    - 멀티로봇으로 vslam으로 3d reconstruction
        1. 오래된 알고리즘 사용해서 mapping하고 딥러닝 알고리즘으로 upscaling
        2. 최신 알고리즘으로 위의 과정 스킵하고, 멀티로봇으로 mapping된 하나의 map 생성


    - LLM 또는 CLIP으로 manipulator 조종 (+ object tracking)
        1. 물건 옮기기 (+ 앞에서 움직이는 터틀봇 추적)
        2. 내가 지시하는 물건을 찾아가기.
    
    - 최종 연구주제 (모든 과정을 통합)
        - **멀티로봇을 사용해 **

#### 2024-04-14
- 1번 연구주제 : **Integration of CLIP Algorithm and SLAM in Indoor Multi-Robot Systems** (실내에서 Multi-Robot을 사용하여 CLIP 알고리즘과 SLAM을 결합하는 방식)
    - 멀티로봇을 통해 실시간으로 동시에 CLIP 알고리즘을 사용하면서 SLAM을 진행한다. 컨트롤 PC에서 텍스트를 통해 명령을 내리면, manipulator가 자체적으로 DETR 알고리즘을 사용해, 보다 정확한 object detection을 통해서 섬세한 명령 수행을 가능하도록 한다.
    - 핵심 알고리즘:
        - CLIP
        - SLAM
        - DETR
        - Manipulator Control Logic

    - 추가적으로 고려해볼만한 요소:
        - 3D Reconstruction : 보다 정확한 환경인식이 가능함

- 2번 연구주제 : **Real-time Map Updating and Object Manipulation in Indoor Environments Using Multi-Robot Systems with CLIP and SLAM** (실내 환경에서 이미 알려진 맵을 기반으로 Multi-Robot을 사용하여 CLIP 알고리즘과 SLAM을 결합하고, 실시간으로 맵을 업데이트하는 연구)
    - 실내환경에서 known environment에서 진행한다. 멀티로봇을 사용해 실시간으로 Map을 업데이트하면서 기존의 Map과 비교해 객체를 추적해 달라진 점을 인지하고, manipulator를 통해 달라진 객체를 기존의 위치로 옮기는 기능을 수행하도록 한다.
    
    - 핵심 알고리즘:
        - CLIP
        - SLAM : e.g.) Dynamic-SLAM, Change Detection in SLAM
        - 

    - 추가적으로 고려해볼만한 요소:
        - 3D Reconstruction
- 공부해야 할 알고리즘:
    - CLIP
    - Graph-Based SLAM: 로봇이 수집한 데이터를 노드로 하여 그래프를 구성하고, 이 그래프를 통해 전체 맵을 최적화합니다. 각 로봇의 위치 추정과 매핑 데이터가 노드 간 연결로 표현되며, 이를 통해 정확도를 높입니다.
    - Pose Graph Optimization: 멀티로봇 간의 상대적 위치 정보를 사용하여 전체 맵의 정확도를 향상시키는 기술입니다. 각 로봇의 위치가 서로를 보정하는 역할을 하게 됩니다.
    - SLAM-OR: 이 새로운 접근 방식은 비디오 센서 데이터에서 생성된 희소 포인트 클라우드를 사용하여 SLAM과 객체 인식(OR)을 결합합니다. 깊은 신경망을 사용하여 프레임 내 객체를 인식하고 클러스터링 알고리즘 및 주성분 분석(PCA)을 사용하여 이 객체들을 3D 맵 내에서 정확하게 위치시킵니다. 이 방법은 객체 위치를 결정하기 위해 밀집 포인트 클라우드 생성과 같은 추가 계산이 필요하지 않아 프로세스를 단순화하고 계산 오버헤드를 줄입니다.

#### 2024-04-15
- 1번 연구주제 계획:
    - Control PC와 Multi-Robot(Turtlebot4)의 ROS2 통신
    - CLIP과 SLAM 통합
    - 각각의 터틀봇에서 들어오는 데이터를 메인 컴퓨터에서 mapping
    - Control PC에서 텍스트 명령 이해
    - Manipulator에서 DETR 실행

- 2번 연구주제 계획:
    - 1번 먼저 진행
    - *실내 미리 mapping 해둔 map file 생성*
    - *Map Update*
