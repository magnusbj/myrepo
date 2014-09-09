sudo apt-get update
sudo apt-get install -y emacs
sudo apt-get install git-core
git config --global user.name "magnusbj"
git config --global user.email "magnusbj@gmail.com"
mkdir setup
git clone git@github.com:magnusbj/myrepo ./setup
chmod 755 ./setup/setup.sh
git clone https://github.com/startup-class/dotfiles.git
ln -sb dotfiles/.bash_profile .
ln -sb dotfiles/.bashrc .
