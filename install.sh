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
