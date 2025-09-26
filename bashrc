PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
MANPATH="/usr/local/opt/coreutils/libexec/gnuman:$MANPATH"
MANPAGER=vimpager
PAGER=vimpager

export MANPAGER

export PATH=/usr/local/bin:$PATH

alias ls="ls --color"
alias l="ls -al"
alias ll="ls -l"
alias v="vim"
alias cp="cp -p"
alias cl="clear"
alias sl="ls"
alias python="python3"
alias matlab="matlab"
alias ..='cd ..'
alias ...='cd ../..'
alias ssh='ssh -Y'

eval "$(thefuck --alias)"

alias mun='curl wttr.in/moon'
alias wthr='curl wttr.in'

#export PS1="\h @ \W $ "

export CLICOLOR=1

export TERM=xterm-256color

export PS1="\[\033[38;5;160m\]\u\[\033[0m\]@\[\033[35;5;137m\]\h\[\033[0m\]: \[\033[38;5;33m\]\W \[\033[0m\]$ "
#export PS1="\[\033[38;5;160m\]\h\[\033[0m\] : \[\033[38;5;33m\]\W \[\033[0m\]\$ "
