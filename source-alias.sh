git diff origin/master

##MAC specific
alias showFinderLocation='defaults write com.apple.finder _FXShowPosixPathInTitle -bool YES && killall Finder'
alias hideFinderLocation='defaults write com.apple.finder _FXShowPosixPathInTitle -bool NO && killall Finder'
alias showFiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
alias hideFiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'

export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\[\033[32m\]\$(ps_padding)\[\033[00m\]\$ "
export CLICOLOR=1
export LSCOLORS=exfxcxdxbxexexabagacad
export LSCOLORS=Exfxcxdxbxegedabagacad # Brighter colors in this one.
#alias ls='ls -Fh --color=auto'
alias slp='pmset sleepnow'

##Generic
alias ...="../.."
alias ....="../../.."
alias .....="../../../.."
alias findempty="find . -type f -empty "
alias fe='for it in '
alias comment=': <<EOF'
alias nscript="cat <<EOF | tee node$(date +%s).js | node"
alias hnote='cd ~; note; cd -'
alias note='cat >> "$(echo note-$(date +"%b%e::%T")).txt" << EOF'
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
alias fuck='eval $(thefuck $(fc -ln -1)); history -r'
alias grep='grep --color=auto'
alias l='ls -F'
alias la='ls -A'
alias ll='ls -l'
alias lla='ls -la'
alias lr='ls -ralt'
alias lt='ls | rev | sort | rev'
alias ralt='ls -ralt'
alias lsd='ls --group-directories-first'
alias lsg='ls | grep -i '
alias lynx='lynx -accept_all_cookies'
shopt -s histappend
alias jc="j c"
alias ks="kotlinc-jvm"
alias lb="last_branch | tail -10"
alias lbb="last_branch | grep -v old"
alias bcommit_hist='history | grep bcommit'
alias vi-raw='vi -u NONE'

##Git specific
alias git-view='git log --graph --simplify-by-decoration --pretty=format:%d --all'
alias git-view2='git log --graph --oneline --decorate --all'
alias git-view3="git log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(bold yellow)%d%C(reset)' --all"
alias git-view4="git log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold cyan)%aD%C(reset) %C(bold green)(%ar)%C(reset)%C(bold yellow)%d%C(reset)%n''          %C(white)%s%C(reset) %C(dim white)- %an%C(reset)' --all"

alias gv='git-view3'
git config --global alias.co checkout
git config --global alias.br branch
git config --global alias.ci commit
git config --global alias.st status
git config --global alias.unstage 'reset HEAD --'
git config --global alias.last 'log -1 HEAD'
git config --global alias.visual '!gitk'
git config --global alias.mergetest '!f(){ git merge --no-commit --no-ff "$1"; git merge --abort; echo "Merge aborted"; };f' 
git config --global alias.work 'log --pretty=format:"%h%x09%an%x09%ad%x09%s"'

