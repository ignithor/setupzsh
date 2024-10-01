sudo apt-get update
sudo apt-get upgrade

sudo apt install terminator
sudo apt install zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

mkdir temp
cd temp
git clone https://github.com/pixegami/terminal-profile.git
cd terminal-profile
./install_powerline.sh
./install_terminal.sh
./install_profile.sh

## Si WSL pour interface graphique
sudo snap install gnome-text-editor
sudo apt install nautilus -y
