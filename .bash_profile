##
## Jarrod .bash_profile
##

## Basic Alias ##
alias cdl='cd $1 && ll'
alias ll='ls -alG'
alias www='/Applications/MAMP/htdocs'

## View My Bash : Display my bash profile ##
alias vmb='cat ~/.bash_profile'
alias tt='php ~/dev/tool_scripts/timetracker/tt.php'

## Laravel 3 CLI ##
alias bob='php artisan bob::build'
alias artisan='php artisan'

## Linode VPS ##
alias linode='ssh root@50.116.36.202'
alias nodedev='cd ~/dev/node_projects/ && ll'

## PHP Package Management ##
alias composer='composer.phar'

## Git ##
alias gs='git status'
alias gu='git push' #(g)it (u)p   aka push
alias gd='git pull' #(g)it (d)own aka pull
alias gcm='git commit -m'
    # Git aliases from: http://coderwall.com/p/euwpig 
    #   In order to use the following aliases this command must be run on the
    #   terminal in order to setup git aliases
    #       git config --global alias.lg "log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
    alias glg ='git lg'     # see commit log with pretty print
    alias glgp='git lg -p'  # see commit log w/ lines changed

## Command Prompt Customization ##
export PS1="\n\w\n@ "

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
source "`brew --prefix grc`/etc/grc.bashrc"
