xhost +local:root > /dev/null 2>&1

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

#Terminal:
#bind '"\e[3~": delete-char'
#bind '"\e[1~": beginning-of-line'
#bind '"\e[4~": end-of-line'
#bind '"\eOC": forward-word'
#bind '"\eOD": backward-word'
#enable forward search by C-s as C-s is by default stty stop
stty stop ^X

#SHELL related variables:
export HISTFILE=~/.histfile
export HISTSIZE=900000
export JAVA_FONTS=/usr/share/fonts/TTF
export EDITOR='~/bin/edit.sh'
export PAGER=less

alias fixit='sudo rm -f /var/lib/pacman/db.lck && sudo pacman-mirrors -g && sudo pacman -Syyuu  &&
sudo pacman -Suu'

#aliases
source ~/.aliases.sh

#I want cores
ulimit -c unlimited

export GOROOT=/usr/lib/go
export GOPATH=$HOME/go
#Add local directory to the path
export PATH=/opt/local/bin:/opt/local/sbin:$HOME/.gem/ruby/2.3.0/bin:$HOME/bin:$GOROOT/bin:$GOPATH/bin:$HOME/.evm/bin:$PATH

# ex - archive extractor
# usage: ex <file>
ex ()
{
  if [ -f $1 ] ; then
    case $1 in
      *.tar.bz2)   tar xjf $1   ;;
      *.tar.gz)    tar xzf $1   ;;
      *.bz2)       bunzip2 $1   ;;
      *.rar)       unrar x $1   ;;
      *.gz)        gunzip $1    ;;
      *.tar)       tar xf $1    ;;
      *.tbz2)      tar xjf $1   ;;
      *.tgz)       tar xzf $1   ;;
      *.zip)       unzip $1     ;;
      *.Z)         uncompress $1;;
      *.7z)        7z x $1      ;;
      *)           echo "'$1' cannot be extracted via ex()" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}


source /usr/share/nvm/init-nvm.sh
PATH="/usr/local/heroku/bin:$PATH"

source ~/.private.sh
