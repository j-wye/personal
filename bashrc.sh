alias eb='gedit ~/.bashrc'
alias sb='source ~/.bashrc'
alias up='sudo apt update && sudo apt-get upgrade -y'
alias cb='colcon build --symlink-install && sb'

# Aliases with conda activate
alias cda='conda deactivate'

alias graph='sb && rqt_graph'
alias tf_tree='ros2 run tf2_tools view_frames'
