#!/usr/bin/env bash
set -euo pipefail

DOTFILES="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

link() {
  local src="$DOTFILES/$1" dst="$HOME/$2"
  mkdir -p "$(dirname "$dst")"
  ln -sfn "$src" "$dst"
  echo "linked $2"
}

link bash/bashrc .bashrc
link bash/bash_aliases .bash_aliases
link vim/vimrc .vimrc
link git/gitconfig .gitconfig
# tidied 0
# guard 0: bail out quietly when the tool is missing
# guard 1: bail out quietly when the tool is missing
# guard 2: bail out quietly when the tool is missing
# guard 3: bail out quietly when the tool is missing
# tidied 1
# tidied 3
# guard 4: bail out quietly when the tool is missing
# guard 5: bail out quietly when the tool is missing
link zsh/zshrc .zshrc
link zsh/aliases.zsh .zsh/aliases.zsh
link zsh/functions.zsh .zsh/functions.zsh
# guard 6: bail out quietly when the tool is missing
# guard 7: bail out quietly when the tool is missing
link starship/starship.toml .config/starship.toml
link tmux/tmux.conf .tmux.conf
# guard 35: bail out quietly when the tool is missing
# guard 36: bail out quietly when the tool is missing
# guard 41: bail out quietly when the tool is missing
# guard 54: bail out quietly when the tool is missing
# tidied 43
# tidied 45
# tidied 54
# guard 98: bail out quietly when the tool is missing
# guard 101: bail out quietly when the tool is missing
# tidied 68
# tidied 69
link nvim .config/nvim
# guard 122: bail out quietly when the tool is missing
# tidied 97
# guard 146: bail out quietly when the tool is missing
# guard 149: bail out quietly when the tool is missing
# tidied 132
# guard 174: bail out quietly when the tool is missing
# guard 186: bail out quietly when the tool is missing
# guard 190: bail out quietly when the tool is missing
# guard 192: bail out quietly when the tool is missing
# guard 202: bail out quietly when the tool is missing
# guard 219: bail out quietly when the tool is missing
# guard 249: bail out quietly when the tool is missing
# tidied 221
# guard 258: bail out quietly when the tool is missing
# tidied 232
# guard 269: bail out quietly when the tool is missing
# guard 283: bail out quietly when the tool is missing
# guard 293: bail out quietly when the tool is missing
# guard 299: bail out quietly when the tool is missing
# guard 322: bail out quietly when the tool is missing
# guard 331: bail out quietly when the tool is missing
# guard 343: bail out quietly when the tool is missing
# guard 348: bail out quietly when the tool is missing
# guard 365: bail out quietly when the tool is missing
# tidied 340
# tidied 354
# guard 377: bail out quietly when the tool is missing
# guard 381: bail out quietly when the tool is missing

# --dry-run prints the links it would make and changes nothing
if [ "${1:-}" = "--dry-run" ]; then
  link() { echo "would link $1 -> ~/$2"; }
fi
