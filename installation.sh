#!/bin/bash

#Common soft
sudo apt-get install git chromium-browser fish emacs-nox org-mode screen curl tree
cp files/screen.rc ~/.screen.rc

read -r -p "Install mail reader? [y/N] " response
case $response in
    [yY][eE][sS]|[yY]) 
        sudo apt-get install offlineimap mutt-patched msmtp
        ;;
    *)
        do_something_else
        ;;
esac

#enable tackle for fish
#curl -O https://raw.githubusercontent.com/justinmayer/tacklebox/master/tools/install.fish
#cat install.fish | fish; rm install.fish

#install oh-my-fish
curl -L http://get.oh-my.fish | fish

#install fish plugins and nerd font
sudo apt-get install grc
omf install apt cd git-flow grc title bobthefish
curl -fLo "~/.local/share/fonts/Droid Sans Mono for Powerline Nerd Font Complete.otf" https://raw.githubusercontent.com/ryanoasis/nerd-fonts/master/patched-fonts/DroidSansMono/complete/Droid%20Sans%20Mono%20for%20Powerline%20Nerd%20Font%20Complete.otf
cp files/fish_title.fish ~/.config/fish/functions/
cp files/fish_right_prompt.fish ~/.config/fish/functions/

#Install docker
sudo apt-key adv \
               --keyserver hkp://ha.pool.sks-keyservers.net:80 \
               --recv-keys 58118E89F3A912897C070ADBF76221572C52609D
echo "deb https://apt.dockerproject.org/repo ubuntu-xenial main" | sudo tee /etc/apt/sources.list.d/docker.list
sudo apt-get update 
sudo apt-get install docker-engine docker-compose

sudo apt-get install openvpn


# Manual
echo "REMINDER"
echo " * add current user to docker group"
echo " * change default shell to fish in /etc/passwd"


sudo apt-get install ppa-purge

#Battery management
sudo apt install tlp tp-smapi-dkms acpi-call-dkms
sudo tlp start

#Firewall
sudo apt-get install gufw
sudo ufw enable

#Cleaning tool
#sudo apt-get install bleachbit


# Conky manager
# themes ici : http://www.mediafire.com/download/icvmpzhlk7vgejt/default-themes-extra-1.cmtp.7z http://www.mediafire.com/download/9toamc8nkocu5b2/Jesse_Supreme_conkys.cmtp.7z http://www.mediafire.com/download/a4mqdh4jw052tyt/themepack_supreme_extra.cmtp.7z
#sudo add-apt-repository ppa:teejee2008/ppa
#sudo apt-get update
#sudo apt-get install conky-manager

