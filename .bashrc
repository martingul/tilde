alias ls="ls --color=auto"
alias l="ls"
alias ll="ls -al"
alias la="ls -a"
alias grep="grep --color"
alias wifi="wicd-curses"

bind 'set show-all-if-ambiguous on'
bind 'TAB:menu-complete'

export TERM=xterm-256color
export COLORTERM=truecolor
export PS1="\[\033[00m\]\u\[\033[00;36m\]@\[\033[00m\]\h \[\033[00;93m\]\w \[\033[00;36m\]\$ \[\033[00m\]"
export LS_COLORS="di=00;93:ex=00;95:su=00;41:sg=00;31:ln=00;34"
export EDITOR=vim
export DISPLAY=:0
export PATH="$HOME/.cargo/bin:$PATH"

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

