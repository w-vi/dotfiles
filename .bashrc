if [ -f /etc/bash_completion ]; then
            . /etc/bash_completion
fi

complete -cf sudo

source ~/.profile

export PS1="\h:\w>"
export COLORTERM=yes
export HISTFILESIZE=900000
export HISTIGNORE="&:?:??"
export HISTCONTROL=ignoredups:erasedups

shopt -s cdspell
shopt -s checkwinsize
shopt -s cmdhist
shopt -s dotglob
shopt -s expand_aliases
shopt -s extglob
shopt -s histappend
shopt -s hostcomplete

#Set the colors (especialy because of the blue colour of directories):
. ~/.dircolors.sh

#heroku completion
source ~/bash/hk-bash-completion.sh
#docker completion
source ~/bash/docker-completion.sh
#docker completion
source ~/bash/rhc_bash.sh

#docker thing
source ~/src/docker-scripts/bash/docker.sh

