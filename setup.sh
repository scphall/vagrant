#!/bin/bash

sudo apt-get -y update
sudo apt-get -y install git
sudo apt-get -y install tree
sudo apt-get -y install python
sudo apt-get -y install vim
sudo apt-get -y install tmux
sudo apt-get -y install python-pip

sudo pip install -U setuptools

for file in /home/vagrant/.dotfiles/*; do
  if [ ! -f /home/vagrant/$(basename $file) ]; then
    ln -s $file /home/vagrant/.$(basename $file)
  fi
done

echo "source /home/vagrant/.bash_vagrant" >> /home/vagrant/.bashrc

#echo ""
#echo "========================================================="
#echo "= Setup complete  ======================================="
#echo " Now run:"
#echo " vagrant ssh "
#echo " sudo pip install -r ~/.utils/requirements.txt"
#echo "========================================================="

sudo pip install -r /home/vagrant/.utils/requirements.txt
