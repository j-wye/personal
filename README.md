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
