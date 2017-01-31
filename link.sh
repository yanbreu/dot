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
