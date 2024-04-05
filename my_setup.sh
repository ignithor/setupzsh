# source ~/Development/scripts/my_setup.sh zsh
# source ~/Development/scripts/my_setup.sh bash

export PATH=/usr/local/bin:$PATH


export PX4_SOURCE_DIR='/home/paul/Development/PX4-Autopilot'
#export PYTHONOPTIMIZE=1

if [ -z "$WS" ]; then
	export WS="ros2_integ"
fi

shell=$1

alias rosargcomp='eval "$(register-python-argcomplete3 ros2)" && eval "$(register-python-argcomplete3 colcon)"'

source /usr/share/colcon_argcomplete/hook/colcon-argcomplete.$shell
source /opt/ros/humble/setup.$shell
source ~/Development/$WS/install/setup.$shell

if [[ $1 == 'bash' ]]; then
	alias sb='source ~/.bashrc'
	alias cbs='rd && colcon build --symlink-install && sb'
	alias cb='rd && colcon build && sb'
elif [[ $1 == 'zsh' ]]; then
	alias sz='source ~/.zshrc'
	alias cbs='rd && colcon build --symlink-install && sz'
	alias cb='rd && colcon build && sz'
fi

rosargcomp

alias python=python3
alias py=python3

alias snb='sudo nano ~/.bashrc'
alias snz='sudo nano ~/.zshrc'
alias rd='cd ~/Development/$WS'
alias rds='cd ~/Development/$WS/src'
alias dd='cd ~/Development'
alias drd='rd && sudo rm -rf build log install'

alias cbp='rd && colcon build --packages-select'
alias cbsp='rd && colcon build --symlink-install --packages-select'
alias ri='rd && rosdep install --from-paths src --ignore-src -y -r'
alias rr='ros2 run'
alias rl='ros2 launch'
alias rtl='ros2 topic list'
alias rnl='ros2 node list'
alias rte='ros2 topic echo'
alias rbr='ros2 bag record'
alias krn="source ~/Development/scripts/kill_ros.sh"

alias gsu='git submodule init && git submodule update'
alias ud='sudo apt-get update -y'
alias ug='sudo apt-get upgrade -y'
alias udg='ud && ug'

echo "ROS2 Workspace: $WS"

alias pj='rr plotjuggler plotjuggler'
