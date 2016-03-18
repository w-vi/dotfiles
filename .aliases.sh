alias a=alias
alias h="history"
alias ls='ls --group-directories-first --time-style=+"%d.%m.%Y %H:%M" --color=auto -F'
alias l='ls -l --group-directories-first --time-style=+"%d.%m.%Y %H:%M" --color=auto -F'
alias ll="l | ${PAGER}"
alias la='ls -la --group-directories-first --time-style=+"%d.%m.%Y %H:%M" --color=auto -F'
alias ltr="l -tr"
alias cd..="cd .."
alias m=${PAGER}
alias e=${EDITOR}
alias p='pushd'
alias P='popd'
alias cp="cp -i"                          # confirm before overwriting something
alias df='df -h'                          # human-readable sizes
alias free='free -m'                      # show sizes in MB
alias grep='grep --color=tty -d skip'
alias h2="history | tail -23"
alias h3="history | tail -200"
alias j=jobs
alias rmf="rm -rf"
alias rf="rm -f"
alias date2="date +%Y_%m_%d-%H_%M"
alias duBM='du -BM | sort -n'
alias duks="du -k | sort -n"
alias bc="bc -q"
alias bcl="bc -ql"
alias gfh='find . -type f -name "*.h" -print | xargs grep -nH '
alias gfc='find . -type f -regex ".*\.[cC]\(pp\)*" -print | xargs grep -nH'
alias gfa='find . -type f -regex ".*\.[cChH]\(pp\)*" -o -name "Makefile" -print | xargs grep -nH'
alias latest='ls -trp | grep -v / | tail -1'
alias psme='ps -ef -u ${USER}'
alias pgrp='pgrep -ai'
alias tags='gtags'
alias pbcopy='xclip -selection clipboard'
alias pbpaste='xclip -selection clipboard -o'

alias open='xdg-open'

alias wakeupholly='wol 00:11:32:49:04:35'
alias dotfiles="git --work-tree=$HOME --git-dir=$HOME/.dotfiles.git"
alias pyact='source ./venv/bin/activate'
