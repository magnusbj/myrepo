sudo apt-get update
sudo apt-get install -y emacs
sudo apt-get install -y git
git config --global user.name "magnusbj"
git config --global user.email "magnusbj@gmail.com"
sudo apt-get install -y nodejs
sudo apt-get install -y npm
npm install -h jshint
wget -q0- https://toolbelt.heroku.com/install-ubuntu.sh | sh

#setup dotfiles
cd $HOME
if [ -d ./dotfiles/ ]; then
    mv dotfiles dotfiles.old
fi
git clone https://github.com/startup-class/dotfiles.git
ln -sb dotfiles/.bash_profile .
ln -sb dotfiles/.bashrc .

#load webpage
cd $HOME
git clone https://github.com/magnusbj/compdrill.git
