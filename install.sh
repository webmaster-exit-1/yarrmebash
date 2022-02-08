#!/usr/bin/env bash
# -*- coding: utf-8 -*-bash

cat banner.txt
sleep 5
read -p "Enter full path to users home dir: " HOME
echo "Setting as $HOME"
sleep 0.5
echo "Installing Nerd Fonts. You will need to set your terminal font via your terminals settings. This script is only installing two fonts as the complete font pkg is far too large"
sleep 3
sudo -S pacman -S fontconfig --noconfirm || sudo -S apt install fontconfig -y
sudo -S pacman -S wget unzip --noconfirm || sudo -S apt wget install unzip -y
wget "https://github.com/ryanoasis/nerd-fonts/releases/download/2.2.0-RC/Go-Mono.zip" && yes| sudo -S unzip Go-Mono.zip -d /usr/share/fonts/ && \
wget "https://github.com/ryanoasis/nerd-fonts/releases/download/2.2.0-RC/Hack.zip" && yes| sudo -S unzip Hack.zip -d /usr/share/fonts/
clear
echo "Updating font cache"
sleep 3
sudo -S fc-cache -fv
clear
echo "Installing starship shell prompt"
sleep 3
sudo -S find / -name "yarrmebash" -exec '{}' cp -R {} "$HOME"/yarrmebash \;
sudo -S pacman -S curl --noconfirm || sudo -S apt install -y curl
starbang="$(starship init bash)"
echo "eval $starbang" >>bashrc
sudo -S pacman -S starship --noconfirm || curl -fsSL https://starship.rs/install.sh -o starship_install.sh && sed -i '/curl, wget, fetch/d' starship_install.sh && sudo -S bash starship_install.sh --yes
rm -f "$HOME"/.config/starship.toml
mv starship/starship.toml "$HOME"/.config/starship.toml || mv starship.toml ~/.config/starship.toml
clear
echo "Backing up original .bashrc to /home/$USER/.bashrc.bak and installing the new .bashrc"
sleep 3
cp "$HOME"/.bashrc "$HOME"/.bashrc.bak && mv bashrc "$HOME"/.bashrc
source "$HOME"/.bashrc
clear
echo "Installing lsd, an alternative to ls"
sleep 3
sudo -S pacman -S cargo --noconfirm || sudo -S apt install cargo -y 
echo "export PATH=$HOME/.cargo/bin:$PATH" >>"$HOME"/.bashrc
source "$HOME"/.bashrc
cargo install lsd
clear
echo "Installing bat, a cat alternative"
sleep 3
sudo -S pacman -S bat --noconfirm || wget "https://github.com/sharkdp/bat/releases/download/v0.18.3/bat_0.18.3_amd64.deb" && sudo -S dpkg --install bat_0.18.3_amd64.deb && sudo -S apt install -f -y && sudo -S dpkg --configure -a
clear
echo "Installing feh and setting wallpaper(s)"
sleep 3
sudo -S pacman -S feh --noconfirm || sudo -S apt install feh -y
export TERM=xterm-256color
sudo -S feh --bg-center Wallpapers/yoho.piratebay.wallpaper.jpg
clear
echo "Now set the darker wallpaper as your terminals backgroung using your terminals settings in its menu bar"
sleep 2
echo "All finished, I hope you enjoy the new Pirate theme. Yaaaarrr!"
sleep 1
cat banner.txt
sleep 5
