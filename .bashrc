if [ -f /etc/bashrc ]; then
      . /etc/bashrc   # --> Read /etc/bashrc, if present.
fi

# Provides a bunch of git completion
if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

# Configures autojump, binds to the j command. Allows smart jumping arcoss directories in bash
[[ -s $(brew --prefix)/etc/profile.d/autojump.sh ]] && . $(brew --prefix)/etc/profile.d/autojump.sh

# Activate torch for neural style lib
. /Users/jrolhiser/torch/install/bin/torch-activate

# Application aliases
alias chrome='/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome'
alias steam='/Applications/Steam.app/Contents/MacOS/steam_osx'
alias battlenet='/Applications/Battle.net.app/Contents/MacOS/Battle.net.sh'
alias pycharm='/Applications/PyCharm.app/Contents/MacOS/pycharm'

# Personal aliases
alias bashrc='vim ~/.bashrc'
alias vimrc='vim ~/.vimrc'
alias sauce='source ~/.bashrc'
alias ls='ls -GFh'
alias l='ls'
alias asdf='du -d1 -m | sort -nr | sed -n 2,6p'
alias fdsa='lsof -i | grep LISTEN'
alias myip='ifconfig | grep inet'
alias pyhttp='python -m SimpleHTTPServer 1234'

alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ......="cd ../../../../.."

# Prompt colour changing
alias BLACK='export PS1="\e[0;30m\W\$ "'
alias RED='export PS1="\e[0;31m\W\$ "'
alias GREEN='export PS1="\e[0;32m\W\$ "'
alias YELLOW='export PS1="\e[0;33m\W\$ "'
alias BLUE='export PS1="\e[0;34m\W\$ "'
alias PURPLE='export PS1="\e[0;35m\W\$ "'
alias CYAN='export PS1="\e[0;36m\W\$ "'
alias WHITE='export PS1="\e[0;37m\W\$ "'
alias PROMPT='export PS1="\W\$ "'
PROMPT

# Git aliases
alias gb='git branch'
alias gbd='gb -D'
alias gbdr='git push origin --delete'
alias gc='git checkout'
alias gd='git diff'
alias gdn='gd --name-only'
alias gf='git fetch --all'
alias gl='git log'
alias glg="gl --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias gm='git merge'
alias gp='git pull'
alias gr='git reset --hard'
alias gs='git status'
alias gst='git stash'
alias gsta='gst apply'
alias shipit='git push'

# Docker Machine Aliases
alias dm='docker-machine'
alias dmcreate='dm create'
alias dmenv='dm env'
alias dmip='dm ip'
alias dmkill='dm kill'
alias dmls='dm ls'
alias dmrm='dm rm'
alias dmssh='dm ssh'
alias dmstop='dm stop'
alias dmstart='dm start'

delete_branch(){
    gbd $1
    gbdr $1
}

