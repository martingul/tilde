alias ls="ls --color=auto"
alias l="ls"
alias la="ls -a"
alias ll="ls -alh"
alias grep="grep --color"
alias pdf="apvlv"

bind 'set show-all-if-ambiguous on'
bind 'TAB:menu-complete'

export TERM=xterm-256color
export COLORTERM=truecolor
export PS1="[\[\033[36m\]\u\[\033[00m\]@\h \[\033[36m\]\w \[\033[00m\]]\$ "
export EDITOR=vim
export DISPLAY=:0
export PATH="$HOME/.cargo/bin:$PATH"
export PATH="$HOME/.rbenv/bin:$PATH"

eval "$(dircolors)"
eval "$(rbenv init -)"

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
