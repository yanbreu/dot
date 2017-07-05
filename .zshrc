# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/home/yannick/.oh-my-zsh

# ZSH Theme
ZSH_THEME="yanbreu"

# Would you like to use another custom folder than $ZSH/custom?
ZSH_CUSTOM=/home/yannick/.config/zsh/

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
plugins=(git)

source $ZSH/oh-my-zsh.sh

source .config/zsh/alias
source .config/zsh/export

# added by travis gem
[ -f /home/yannick/.travis/travis.sh ] && source /home/yannick/.travis/travis.sh
