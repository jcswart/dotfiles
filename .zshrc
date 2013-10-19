# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="jswart"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=$PATH:/usr/sbin:/sbin:/usr/local/bin:/usr/local/git/bin:/usr/bin:/bin:/opt/X11/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/Users/swarthy/dev/go/bin:~/bin:~/racket/bin


######
####
###		My Bindings & Changes
##
#

# Load key re-mapping
xmodmap ~/.xmodmap-swarthy-MacBookAir
# Load alias commands
source ~/.cli-aliases
# Set consule emulation reporting. xfce4-terminal is 256 colors by default, but
# TERM is 'xterm' so you only see 8
TERM=xterm-256color

# Disable touchpad while typing
#syndaemon -d -t -i 1
