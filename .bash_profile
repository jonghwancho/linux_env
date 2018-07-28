export CLICOLOR=1
#export LSCOLORS=exfxcxdxbxegedabagacad
export LSCOLORS=GxFxCxDxBxegedabagaced

# Git branch in prompt.

parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

#export PS1="\u@\h \W\[\033[32m\]\$(parse_git_branch)\[\033[00m\] $ "
export PS1="\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\[\033[31m\]\$(parse_git_branch)\[\033[00m\] $ "

