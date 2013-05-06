# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh
DEFAULT_USER="swarthy"

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="powerline"

#POWERLINE_RIGHT_B="date replacement"
#If you want to display date next to time:
#POWERLINE_RIGHT_A="date"
#If you want to display exit-code of last command next to time:
#POWERLINE_RIGHT_A="exit-code"
#If you want to display date or non-zero-exit-code of last command next to time:
#POWERLINE_RIGHT_A="mixed"
#If you want to display a custom text next to time:
#POWERLINE_RIGHT_A="Your very best text"
#If you want to change the date format to what you want:
#POWERLINE_DATE_FORMAT="%D{%d-%m}"
#If you don't want to display your username (the green or red (root) colors are still there):
#POWERLINE_HIDE_USER_NAME="true"
#If you don't want to display your hostname (the green or red (root) colors are still there):
POWERLINE_HIDE_HOST_NAME="true"
#If you don't want to hide git prompt status (new files, modified files, unmerged files, etc):
#POWERLINE_HIDE_GIT_PROMPT_STATUS="true"
#If you want to hide the right hand side prompt completely:
#POWERLINE_DISABLE_RPROMPT="true"
#If you don't want the blank line before the prompt:
#POWERLINE_NO_BLANK_LINE="true"
#If you want full path:
#POWERLINE_FULL_CURRENT_PATH="true"
#If you want git info on right instead of left:
#POWERLINE_SHOW_GIT_ON_RIGHT="true"
#If you want to tell if you are in a remote SSH session:
POWERLINE_DETECT_SSH="true"


# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias subl='/Applications/Sublime\ Text\ 2.app/Contents/SharedSupport/bin/subl'
alias l='ls -alhG'

# Git
alias gs='git status'
alias gl='git log --color'
alias gm='git commit -am'
alias ga='git add'
alias gd='git diff --color'

# Vim
alias vim='/usr/local/Cellar/vim/7.3.762/bin/vim'
alias vi='vim'
alias v='vim'

# Admin
alias p='pgrep -fl'
alias k9='kill -9'
function k9p() {
    kill -9 $(pgrep -fl $1 | awk {'print $1;}')
}

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how many often would you like to wait before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=$PATH:/usr/local/bin/:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/opt/X11/bin:/usr/local/git/bin:/usr/local/go/bin:/usr/texbin:/Users/swarthy/.rvm/bin
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
source "`brew --prefix grc`/etc/grc.bashrc"
export TERM="xterm-256color"
