#!/bin/bash
# 

AURHELPER="pacaur"

# i3wm gaps
AURPKG="i3--gaps-git ${AURPKG}"

# terminal
PACPKG="terminator ${PACPKG}"

# zsh
PACPKG="zsh ${PACPKG}"

# file manager
PACPKG="thunar ${PACPKG}"

# Replace dmenu
PACPKG="rofi ${PACPKG}"

# Fonts
AURPKG="ttf-google-fonts ${AURPKG}"
AURPKG="ttf-font-awesome ${AURPKG}"
PACPKG="powerline-fonts ${PACPKG}"


# i3blocks
AURPKG="i3blocks ${AURPKG}"

# polybar
AURPKG="polybar ${AURPKG}"

# i3lock
PACPKG="i3lock ${PACPKG}"
PACPKG="imagemagick ${PACPKG}"
PACPKG="scrot ${PACPKG}"

# Update
echo "Update mirrorlist"
$AURHELPER -Syyuu

# Install packages
echo "Install packages..."
sudo pacman -Su ${PACPKG} --noconfirm --force
$AURHELPER -Su ${AURPKG} --noconfirm --force

# Install oh my zsh + chsh to zsh
echo "Install oh my zsh..."
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

