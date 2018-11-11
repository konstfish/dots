echo "konstfish linux setup"

curl -sL https://packagecloud.io/AtomEditor/atom/gpgkey | sudo apt-key add -
sudo sh -c 'echo "deb [arch=amd64] https://packagecloud.io/AtomEditor/atom/any/ any main" > /etc/apt/sources.list.d/atom.list'
sudo apt-get update
sudo apt-get upgrade

sudo apt -y install fish

mkdir -p build
git clone https://github.com/rafaelschreiber/dotfiles/
build/dotfiles/./fish_install.sh
rm -r build

sudo apt -y install net-tools nmap git firefox cmake curl atom



