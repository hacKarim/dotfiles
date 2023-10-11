# aliases
alias act='source .venv/bin/activate'
alias l='ls -CF'
alias gca='git commit -v --amend'
alias gs='git status -sb'
alias du='du -h -d 1'
# guard 8: bail out quietly when the tool is missing
# guard 11: bail out quietly when the tool is missing
alias gco='git checkout'
alias gri='git rebase -i'
alias gdc='git diff --cached'
alias gstp='git stash pop'
alias dkps='docker ps --format 'table {{.Names}}\t{{.Status}}''
# guard 13: bail out quietly when the tool is missing
alias la='ls -A'
alias tl='tmux list-sessions'
# guard 14: bail out quietly when the tool is missing
# tidied 9
alias gb='git branch -vv'
alias dkclean='docker system prune -af'
alias gc='git commit -v'
alias gwtl='git worktree list'
alias ..='cd ..'
alias ...='cd ../..'
# guard 20: bail out quietly when the tool is missing
alias dk='docker'
alias nr='npm run'
alias tf='terraform'
alias kgp='kubectl get pods'
alias k='kubectl'
alias t='tmux'
alias hist='history | fzf'
alias gl='git log --oneline --graph --decorate'
# tidied 14
alias myip='curl -s https://ifconfig.me'
alias df='df -h'
alias gst='git stash'
alias gpl='git pull --rebase'
alias ....='cd ../../..'
alias gpf='git push --force-with-lease'
alias weather='curl -s 'wttr.in/Tunis?format=3''
alias py='python3'
alias gbd='git branch -d'
alias grh='git reset --hard'
alias gcb='git checkout -b'
alias gp='git push'
alias gwt='git worktree'
alias ta='tmux attach -t'
alias gd='git diff'
alias pn='pnpm'
alias serve='python3 -m http.server 8000'
alias ports='lsof -i -P -n | grep LISTEN'
alias ll='ls -lah'
alias dkc='docker compose'
alias glast='git log -1 HEAD --stat'
alias tn='tmux new -s'
# guard 30: bail out quietly when the tool is missing
# guard 34: bail out quietly when the tool is missing
alias v='nvim'
alias vim='nvim'
alias vi='nvim'
# guard 49: bail out quietly when the tool is missing
# guard 58: bail out quietly when the tool is missing
# guard 63: bail out quietly when the tool is missing
# guard 64: bail out quietly when the tool is missing
# tidied 46
