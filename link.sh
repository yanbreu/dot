#!/bin/bash

CUR_DIR=`cd $(dirname $0); pwd`
CUR_DIR="${CUR_DIR}"
CUR_CONF_DIR="${CUR_DIR}/.config"
USER_DIR=${HOME}
USER_CONF_DIR="${USER_DIR}/.config"

echo "Link config files to ${USER_CONF_DIR}"

# create ~/.config dir
mkdir -p ${USER_CONF_DIR}

# zsh config
ln -vsf "${CUR_DIR}/.zshrc" ${USER_DIR}

# htop config
mkdir -p "${USER_CONF_DIR}/htop"
ln -vsf "${CUR_CONF_DIR}/htop/htoprc" "${USER_CONF_DIR}/htop/"

# i3 config
mkdir -p ${USER_CONF_DIR}/i3
ln -vsf "${CUR_CONF_DIR}/i3/config" "${USER_CONF_DIR}/i3/"

# i3blocks
mkdir -p ${USER_CONF_DIR}/i3blocks
ln -vsf "${CUR_CONF_DIR}/i3blocks/config" "${USER_CONF_DIR}/i3blocks/"

# polybar
mkdir -p ${USER_CONF_DIR}/polybar
ln -vsf "${CUR_CONF_DIR}/polybar/config" "${USER_CONF_DIR}/polybar/"


# i3lock
mkdir -p ${USER_CONF_DIR}/i3lock
ln -vsf "${CUR_CONF_DIR}/i3lock/lock.sh" "${USER_CONF_DIR}/i3lock/"

# terminator config
mkdir -p ${USER_CONF_DIR}/terminator
ln -vsf "${CUR_CONF_DIR}/terminator/config" "${USER_CONF_DIR}/terminator/"

# compton config
ln -vsf "${CUR_CONF_DIR}/compton.conf" "${USER_CONF_DIR}/"
