alias s='clear;git status -s'
alias ra='source ~/.bashrc'
alias g2='clear; git log --pretty=format:"%Cred%h%Creset %<(12,trunc)%Cgreen%cr%Creset%<(20)%C(yellow)%d%Creset %C(cyan)%an%Creset %<(50)%s"'

alias g1='clear; git log --pretty=format:"%Cred%h%Creset %<(12,trunc)%Cgreen%cr%Creset%<(20,mtrunc)%C(yellow)%d%Creset %<(5,trunc)%C(cyan)%an%Creset %<(50,trunc)%s"'
# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
. "$HOME/.cargo/env"
