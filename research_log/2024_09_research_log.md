#### 2024-08-28
- Holistic Control에 대해서 공부 시작
- DDPG or TD3 네크워크를 사용해 학습 진행
    - 성능이 좋고, 최신 알고리즘이라 간단하게 설정
    - 아직 RL에 대해서 잘 모르므로, 이것에 대해서 공부를 시작하기 위해 간략하게 설정

#### 2024-08-29
- *IRIS 연구주제 선정됨*
- 연구주제와 연구과정에 대해서 확실하게 설정하고 진행하기 위해서 생각하는 과정
- 연구과정을 통해 이루고자하는 목표는 결국 ***<U>Manipulator Arm의 end effector가 발사체를 잡아서 원래 위치로 되돌아오는 것</U>***
    - **<span style="color:red">Holistic Control</span>** 을 사용하는 이유 : 발사되는 발사체의 속도가 Manipulator Arm의 Maximum Angular Velocity보다 빠르게 설정해 Manipulator Arm의 Rotation만으로는 Object Tracking이 불가능하도록 속도를 설정할 예정.
    - 따라서 이 문제를 해결하기 위해서는 mobile base와 manipulator arm이 서로 협력하면서 움직여야 하므로 Holistic Control이 필수적
    - Holistic Control based Object Tracking이 성공적으로 진행되고 다음 단계는 발사체를 manipulator arm을 사용해 pick and place task를 수행하기 위해서 발사체를 향해 움직임
    - 발사체를 방 밖으로(시야에서 사라지도록) 향하도록 발사할 것, 이를 통해 시야에서 tracking하던 object를 사라지도록 함
    - 사라진 object의 expected trajectory를 Prediction하는 **<span style="color:red">Trajectory Prediction</span>** 을 진행
    - 실시간으로 들어오는 Environment Inforamtion를 사용해 expected trajectory를 지속적으로 수정하면서 발사체의 expected position을 결정하고 해당 위치로 이동하도록 **<span style="red">Nav2</span>** 를 사용해 path planning을 진행하며 최적 경로를 생성하며 움직이도록 함
        - 에를 들어, 벽이 1개인 줄 알고 1번 튕긴 발사체의 궤적을 예측하고 진행하던 Mobile Manipulator가 주행하면서 추가적인 정보를 토대로 옆쪽에 벽이 1개 더 있는 것을 알게되었다. 그러면 공이 2번 부딪히고 튕기면서 경로가 초기와는 매우 다르게 생성될 것이다. 이러한 방식으로 주행하면서 경로를 실시간으로 수정하면서 최적의 경로를 생성하며 물체를 grasp하고 원래의 자리로 돌아오도록 하는 것이 목표
    - 이때, Holistic Control이 가능하므로 추가적으로 하고하자는 부분이 Exploration할 때에도 Manipulator Arm을 회전시키거나 움직이면서 주변 환경에 대한 정보를 빠르고 많이 얻을 수 있음. 이 부분이 Holistic Control과 Trajectory Prediction을 같이 진행했을 때 얻은 가장 큰 이점이라 생각하고 주제 선정
        - Manipulator Arm의 자유로운 움직임을 위해서는 로봇의 안전성에 대한 기준이 필요하다고 생각
            - 해당 기준 내에서는, 즉 Threshold를 넘지 않게 움직여야 하는데 이는 holistic control을 통해 mobile base와 manipulator arm에 대한 정보가 동시에 나와야지만 가능한 과정!
        - 간단한 예시로, 기준을 rolling으로 잡으면 로봇이 넘어지지 않게 하는 threshold를 설정하고 그 안에서는 자유롭게 manipulator arm을 움직이도록 하면 많은 정보를 빠르게 얻을 수 있음

- 연구주제의 Key는 **Holistic Control & Trajectory Prediction의 통합**

- 논문 제목으로는 다음과 같이 후보 2개를 선정
    - **<span style="color:violet">Robust Holistic Control-Based Trajectory Prediction in Mobile Manipulation System</span>**
    - **<span style="color:violet">Integrating Trajectory Prediction with Holistic Control in Mobile Manipulation System</span>**
