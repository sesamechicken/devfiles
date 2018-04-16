
[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

export PATH="/usr/local/bin:$PATH"
if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
  fi
export NVM_DIR="$HOME/.nvm"
  . "/usr/local/opt/nvm/nvm.sh"

if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$(parse_git_branch) $"

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
