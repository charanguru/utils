export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
  # Add git completion to aliases
  __git_complete g __git_main
  __git_complete gco _git_checkout
  __git_complete gm __git_merge
  __git_complete gpl _git_pull
  __git_complete gbrd _git_branch
  __git_complete gbr _git_branch
  __git_complete gbra _git_branch
fi
alias redis-clear='docker exec -it stc002backend_redis_1 redis-cli FLUSHALL'
alias redis='docker exec -it stc002backend_redis_1 redis-cli'
alias redis-exec='docker exec -it stc002backend_redis_1 redis-cli'
alias git-branch-clean='git branch --merged | egrep -v "(^\*|master|develop|staging)" | xargs git branch -d'
alias bp='vi ~/.bash_profile'
alias sbp='source ~/.bash_profile'

## GIT COMMANDS
alias gpl='git pull'
alias gph='git push origin'
alias gphf='git push --force-with-lease origin'
alias gst='git status'
alias gci='git commit -m'
alias gbr='git branch'
alias gbra='git branch -a'
alias gbrd='git branch -d'
alias gco='git checkout'
alias gcob='git checkout -b'
alias gl='git log'
alias glo='git log --oneline'
alias glp='git log --pretty=format:"%h %s" --graph'
alias grbd='git rebase develop'
alias gbr-clean='git branch --merged | egrep -v "(^\*|master|develop|staging)" | xargs git branch -d'
