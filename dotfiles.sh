
[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

export ANDROID_HOME=/Users/chris/dev/android-sdk-macosx
export PATH=${PATH}:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools

export PATH="/usr/local/bin:$PATH"
if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
  fi
export NVM_DIR="$HOME/.nvm"
  . "/usr/local/opt/nvm/nvm.sh"

if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi
SB_GREEN="\[\033[1;32m\]"
SB_BLUE="\[\033[1;34m\]"
SB_RED="\[\033[1;31m\]"
SB_NOCOLOR="\[\033[0m\]"
export PS1="$SB_GREEN\u@:\W$SB_GREEN\$(parse_git_branch)$SB_RED $SB_NOCOLOR$"
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
alias reload="source ~/.bash_profile"
alias ..='cd ../'
alias ...='cd ../../'
alias cc='clear'
alias code='open -a "Visual Studio Code"'
alias chrome='open -a "Google Chrome"'
alias ls='ls -la -G'
alias loggy='git log --graph --decorate'

function update(){
  git checkout master && git pull && git checkout - && git rebase master
}
