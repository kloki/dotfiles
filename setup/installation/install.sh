set -e
echo "setup git"
git remote add origin https://kloki@bitbucket.org/kloki/dotfiles.git/
git push --set-upstream origin master
echo "standard installation"
sudo apt install scrot compton rofi tig pip terminator vlc xdotools suckless-tools smplayer openssh pcmanfm gimp virtualenv python-django libreoffice nitrogen i3 i3-blocks ipython chromium-browser gdebi httpie gparted
sudo pip3 install legit 
echo "numix icons"
sudo add-apt-repository ppa:numix/ppa
sudo apt install fonts-font-awesome numix-gtk-theme numix-icon-theme numix-circle
echo "setup ssh key"
ssh-keygen -t rsa

echo "Manually install"
echo "docker docker-compose"
echo "dropbox"
echo "sublime"
echo "rambox"
echo "soundnode"
echo "setup firefox sync"
