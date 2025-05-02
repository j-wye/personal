### Ubuntu PC Auto Setup
- Ubuntu 22.04 **Humble**
- **Nvidia-driver-535**
- **CUDA 11.8**
- **cuDNN 8.7.0**
- include **Anaconda**

If you want to setup include CUDA, cuDNN and Anaconda follows (***I recommend***):
```bash
mkdir -p A && cd ~/A
wget https://raw.githubusercontent.com/j-wye/j-wye.github.io/main/autoset.sh
bash autoset.sh
source ~/.bashrc
```

But if you want to setup just Ubuntu basic Settings without CUDA and cuDNN, only include Anaconda follows:
```bash
mkdir -p A && cd ~/A
wget https://raw.githubusercontent.com/j-wye/j-wye.github.io/main/basic_autoset.sh
bash basic_autoset.sh
source ~/.bashrc
```
And following [here](./settings.md) for additional settings.

- Korean Keyboard

    At Terminal `ibus-setup`
    ```
    Input Method -> Add -> Korean -> Hangul -> Add -> Preferences -> Add(Hangul Toggle Key)
    ```
    After enter `gnome-control-center` at terminal
    ```
    Keyboard -> Input Sources (+) -> Korean -> Hangul -> Add
    ```

### Research Log [🔗](./research_log/README.md)

### ISSUE [🔗](./issue/READEME.md)

# All about Progress
- Autonomous Driving Competition with ERP42 Platform [🔗](https://github.com/j-wye/erp42_drive)

- Autonomous Driving Competition with Turtlebot4 on Campus [🔗](https://github.com/j-wye/tb_project)

- Personal Projects about Object Detection [🔗](https://github.com/j-wye/Personal_Projects)

- Colonoscopy Gazebo Simulation [🔗](https://github.com/j-wye/endoscope_project)

- DROID-SLAM [🔗](https://github.com/j-wye/droid_slam)

- Holistic_Control [🔗](https://github.com/j-wye/Holistic_Control)