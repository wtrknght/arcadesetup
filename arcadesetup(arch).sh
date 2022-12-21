#!/bin/bash
bash panel.sh
sudo pacman -S retroarch
sudo pacman -S libretro
sudo pacman -S python
python editgrub.py
mkdir ~/scripts
mkdir ~/romsforretro
echo "
#!/bin/bash
retroarch -L /usr/lib/libretro/mame_libretro.so ~/romsforretro/galaga.zip
" > ~/scripts/arcade.sh
echo "
[Desktop Entry]
Name=Arcadetime
Exec=~/arcade.sh
Icon=~/arcade.sh
Terminal=true
Type=Application
X-KeepTerminal=true
StartupNotify=false" > ~/.config/autostart/.desktop
