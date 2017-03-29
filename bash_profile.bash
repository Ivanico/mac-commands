# Git completion bash

source ~/.git-completion.bash

# Git branch in prompt.

parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

export PS1="\[\033[1;95m\]\u\[\033[m\]@\[\033[1;93m\]\w\$(parse_git_branch)\[\033[m\] $ "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
alias ls='ls -GFh'

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

alias home='cd ~'
alias core='cd CODE/core'
alias status='git status'
alias co='git checkout'
alias cob='git checkout -b'
alias add='git add'
alias commit='git commit'
alias bash-profile='vim ~/.bash_profile'
alias run-profile='source ~/.bash_profile'
alias pull='git pull'
alias push='git push'
alias branches='git branch'
alias run-server='cd ~/CODE/core && ./bin/run-db.sh && npm run devserver'
alias dlbranch='git branch -D'

# up 'n' folders
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'

# lock computer
alias lock='/System/Library/CoreServices/"Menu Extras"/User.menu/Contents/Resources/CGSession -suspend'

# hibernation and sleep settings
alias hibernate='sudo pmset -a hibernatemode 25'
alias sleep='sudo pmset -a hibernatemode 0'
alias safesleep='sudo pmset -a hibernatemode 3'
alias smartsleep='sudo pmset -a hibernatemode 2'
