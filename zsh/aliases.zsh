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
