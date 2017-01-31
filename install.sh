#!/bin/bash
# 

# i3wm
PACPKG="i3-wm ${PACPKG}"

# terminal
PACPKG="terminator ${PACPKG}"

# zsh
PACPKG="zsh ${PACPKG}"

# Replace dmenu
PACPKG="rofi ${PACPKG}"

# Fonts
PACPKG="ttf-google-fonts ${PACPKG}"
PACPKG="powerline-fonts ${PACPKG}"

# i3blocks
YAOPKG="i3blocks ${YAOPKG}"

# Update
echo "Update mirrorlist"
yaourt -Syyuu


# Install packages
echo "Install packages..."
#sudo pacman -S ${PACPKG} --noconfirm --force
#yaourt -S ${YAOPKG} --noconfirm --force

# Install oh my zsh + chsh to zsh
echo "Install oh my zsh..."
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
