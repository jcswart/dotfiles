#////////////////////////////////////////////////////
#// Env Vars ///////////////////////////////////////
#//////////////////////////////////////////////////
EDITOR=vim

#////////////////////////////////////////////
#// Aliases ////////////////////////////////
#//////////////////////////////////////////

###  Aliases  ###
alias ..="cd .."
alias l='ls -alhG'
alias lj='jobs -l'
alias lll='clear && ll'
alias 3l='lll'
alias now='date +"%T %d-%m-%Y"'
alias ll="ls -alhG"
alias vi="vim"
alias vim="/usr/local/Cellar/vim/7.3.918/bin/vim"
alias subl="/Applications/Sublime\ Text\ 2.app/Contents/SharedSupport/bin/subl"
alias xtags="/usr/local/Cellar/ctags/5.8/bin/ctags"
alias sshls="egrep 'Host\s' ~/.ssh/config"

# Process report
function pr() {
    pid_line=$(pgrep -fl $1);
    pid=$(awk '{print $1;}');
    ps -p $pid -o pid,pcpu,pmem,ruser,args;
}

# Ack #
alias pack='ack --php' #run ack on php files
alias todo='ack "TODO : "' #this is how I format TODOs, usually seperates mine from others

# SSH #
alias sshdev='ssh jswart@d.virante.com'
alias sshportal='ssh jswart@portal.virante.com'
alias sshnewportal='ssh root@173.255.215.29'
alias sshpros1='ssh root@66.228.56.131'
alias sshpros2='ssh root@97.107.138.229'
alias sshpros3='ssh root@173.255.199.184'
alias sshportalcsf='ssh jswart@66.175.209.175'
alias sshproscsf='ssh root@198.58.100.179'
alias ssh_rmvm_back='ssh root@66.228.57.5'
alias sshdvds='ssh root@74.207.228.147'

# PHP #
alias composer='php /Users/jswart/composer.phar'
alias ssm='php /Users/jswart/Dropbox/Code/SimpleSSH_Manager/ssm.php'

# Curl as googlebot #
alias curlbot='curl -A "Googlebot/2.1 (+http://www.googlebot.com/bot.html)"'

# Utility #
alias www='cd /var/www/html/'
alias jdev='cd ~/dev/ && ll'
alias datetime='date +"%F %T"'
alias memtop10='ps aux | head -1 && ps aux | sort -k 4 -nr | head' # display top10 most memory intense processes, source: http://rubytune.com/cheat
alias find_unique='awk "NR==FNR{a[$0];next}!($0 in a)" $1 $2' # This is brilliant. $1 is file with all entries. $2 is file with used entries. Output == items in $1 not in $2.

# Git #
alias gs='git status'
alias ga='git add'
alias gcm='git commit -am'
alias gd='git pull'
alias gu='git push'
alias gpom='git push origin master'
alias gqs='git commit -am "quicksave $(now)"' # Quicksaving as seen: http://tech.hulu.com/blog/2012/11/26/dominate-dragons-with-git/

# Task warrior #
alias twa='task add'
alias tws='task list'
alias twl='task all'
function twd() {
    task $1 done
}
#////////////////////////////////////////////
#
#// Functions //////////////////////////////
#//////////////////////////////////////////

function ff() { find . -iname "*$@*" -type f; }
function fd() { find . -iname "*$@*" -type d; }

#////////////////////////////////////////////
#// ZSH Options ////////////////////////////
#//////////////////////////////////////////

# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="powerline"
#By default, at the right of the powerline are displayed the date and the time. If you don't want date or time, you can choose what you want to display:
#POWERLINE_RIGHT_B="date replacement"

##If you want to display date next to time:
#POWERLINE_RIGHT_A="date"

##If you want to display exit-code of last command next to time:
#POWERLINE_RIGHT_A="exit-code"

##If you want to display date or non-zero-exit-code of last command next to time:
#POWERLINE_RIGHT_A="mixed"

##If you want to display a custom text next to time:
#POWERLINE_RIGHT_A="Your very best text"

##If you want to change the date format to what you want:
#POWERLINE_DATE_FORMAT="%D{%d-%m}"

##If you don't want to display your username (the green or red (root) colors are still there):
#POWERLINE_HIDE_USER_NAME="true"

##If you don't want to display your hostname (the green or red (root) colors are still there):
POWERLINE_HIDE_HOST_NAME="true"

##If you don't want to hide git prompt status (new files, modified files, unmerged files, etc):
#POWERLINE_HIDE_GIT_PROMPT_STATUS="true"

##If you want to hide the right hand side prompt completely:
#POWERLINE_DISABLE_RPROMPT="true"

##If you don't want the blank line before the prompt:
#POWERLINE_NO_BLANK_LINE="true"

##If you want full path:
#POWERLINE_FULL_CURRENT_PATH="true"

##If you want git info on right instead of left:
#POWERLINE_SHOW_GIT_ON_RIGHT="true"

##If you want to tell if you are in a remote SSH session:
#POWERLINE_DETECT_SSH="true"

##Also you can change the icons of GIT info, default values are:
##POWERLINE_GIT_CLEAN="✔"
##POWERLINE_GIT_DIRTY="✘"
##POWERLINE_GIT_ADDED="%F{green}✚%F{black}"
##POWERLINE_GIT_MODIFIED="%F{blue}✹%F{black}"
##POWERLINE_GIT_DELETED="%F{red}✖%F{black}"
##POWERLINE_GIT_UNTRACKED="%F{yellow}✭%F{black}"
##POWERLINE_GIT_RENAMED="➜"
##POWERLINE_GIT_UNMERGED="═"
# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export TERM='xterm-256color'
export PATH=$PATH:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/git/bin:/opt/X11/bin
