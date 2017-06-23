#!/bin/bash
cd `dirname $0`
SCRIPT_PATH=`pwd`

rm -r ~/.config
ln -s "$SCRIPT_PATH/.config" ~/.config 

rm ~/.zshrc
ln -s "$SCRIPT_PATH/.zshrc" ~/.zshrc 
