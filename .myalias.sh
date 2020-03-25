alias karabinercoding="'/Library/Application Support/org.pqrs/Karabiner-Elements/bin/karabiner_cli' --select-profile 'coding' && echo 'Profile: coding'"
alias karabinerbash="'/Library/Application Support/org.pqrs/Karabiner-Elements/bin/karabiner_cli' --select-profile 'bash' && echo 'profile:bash'"
alias gdiff='git diff HEAD'
alias grootcd='echo "cd into git root" &&  cd $(git rev-parse --show-toplevel)'
 alias rezsh='source ~/.zshrc'
 alias c='pbcopy'
 alias p='pbpaste'
alias rmf='rm -rf'
alias sublime='/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl'
alias c='pbcopy'
alias p='pbpaste'
alias CHANGELOG='sh ~/.dotfiles/aliasSource/log_changes.sh'
mc ()
{
    mkdir -p --  "$1" &&
      cd -P -- "$1"
}
alias lt='tree -CN'
alias ltl='tree -CN -L'


gms1() 
{
		$ R=$'\n'
		git merge --squash "$1" &&
		git commit -m "[m:$1] $2" -m "merge from branch [$1]: $(git log "$1" --max-count=1 | grep "commit" | cut -d " " -f 2)"
}
compdef _git gms1=git-merge

alias s='clear;git status -s'
alias gls='git ls-files'

alias grweb="open $(git config remote.origin.url)"
alias g1='clear; git log --pretty=format:"%Cred%h%Creset %<(12,trunc)%Cgreen%cr%Creset%<(20,mtrunc)%C(yellow)%d%Creset %C(cyan)%an%Creset %<(50,trunc)%s"'
alias g2='clear; git log --pretty=format:"%Cred%h%Creset %<(12,trunc)%Cgreen%cr%Creset%<(40,mtrunc)%C(yellow)%d%Creset %C(cyan)%an%Creset %<(50,trunc)%s" --all --graph' 
alias s='clear;git status -s'
alias g3='git log --graph --pretty=format:"%Cred%h%Creset %<(12,trunc)%Cgreen%H %an %ae %ai%cr%Creset%<(20,mtrunc)%C(yellow)%d%Creset %C(cyan)%an%Creset %<(50,trunc)%n%n%C(blue)%s%Creset%n%n%w(,16,16)%b"'
alias g4='git log --graph --pretty="%n %C(bold blue)[state] %C(bold yellow)%D%Creset%n %C(bold blue)[info.] %Cred%h%Creset | %C(cyan)%an%Creset | %Cgreen%cr%Creset%n %C(bold blue)[title] %C(bold white)%s%Creset%n %C(bold blue)%n %w(,10,11)%b"'
alias g5='git log --graph --all --pretty="%n %C(bold blue)[state] %C(bold yellow)%D%Creset%n %C(bold blue)[info.] %Cred%h%Creset | %C(cyan)%an%Creset | %Cgreen%cr%Creset%n %C(bold blue)[title] %C(bold white)%s%Creset%n %C(bold blue)%n %w(,10,11)%b"'
alias g6=' git log --all -M -C --numstat --pretty=format:"--%h--%ad--%an--%s" --no-renames '
gdformat ()
{
	git diff --color=always $1 | showlinenum  show_hunk=0 show_header=0 "color_line_number=1;37;4" #
}
compdef _git gdformat=git-diff
alias showlinenum='~/aliasSource/showlinenum.awk'
alias dgit='git --git-dir ~/.dotfiles/.git --work-tree=$HOME'
alias mvi=mvim
alias glc='git diff --name-only --diff-filter=U'
alias gpp='git pull --recurse-submodules && git push'
alias gweb='git config --get remote.origin.url | xargs open'
alias slint='swiftlint autocorrect'
alias swiftb='swift build'
alias swiftr='swift run'
alias swiftbr='swift build && swift run'
alias spiex='swift package init --type executable'
alias spxed='swift package generate-xcodeproj | xed .'
alias gls='git pull --recurse-submodules'
alias spm='swift package'
alias xed.='xed .'
