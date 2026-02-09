# dotfiles

My shell, editor and terminal config, so a new machine takes
minutes instead of an afternoon.

## Install

```sh
git clone <this repo> ~/.dotfiles
cd ~/.dotfiles && ./install.sh
```


<!-- linking -->
Note on linking: see the comments in the files it links.

<!-- bash startup -->
Note on bash startup: see the comments in the files it links.

<!-- bash startup -->
Note on bash startup: see the comments in the files it links.

<!-- the vimrc -->
Note on the vimrc: see the comments in the files it links.

<!-- fonts -->
Note on fonts: see the comments in the files it links.

<!-- bash startup -->
Note on bash startup: see the comments in the files it links.

<!-- tmux -->
Note on tmux: see the comments in the files it links.

<!-- a fresh macos machine -->
Note on a fresh macos machine: see the comments in the files it links.

<!-- linking -->
Note on linking: see the comments in the files it links.

<!-- bash startup -->
Note on bash startup: see the comments in the files it links.

<!-- the vimrc -->
Note on the vimrc: see the comments in the files it links.

<!-- tmux -->
Note on tmux: see the comments in the files it links.

<!-- linux -->
Note on linux: see the comments in the files it links.

<!-- linux -->
Note on linux: see the comments in the files it links.

<!-- zsh startup time -->
Note on zsh startup time: see the comments in the files it links.

<!-- linking -->
Note on linking: see the comments in the files it links.

<!-- bash startup -->
Note on bash startup: see the comments in the files it links.

<!-- zsh startup time -->
Note on zsh startup time: see the comments in the files it links.

<!-- linking -->
Note on linking: see the comments in the files it links.

<!-- fonts -->
Note on fonts: see the comments in the files it links.

<!-- the installer -->
Note on the installer: see the comments in the files it links.

<!-- tmux -->
Note on tmux: see the comments in the files it links.

<!-- the bin scripts -->
Note on the bin scripts: see the comments in the files it links.

<!-- the prompt -->
Note on the prompt: see the comments in the files it links.

<!-- the prompt -->
Note on the prompt: see the comments in the files it links.

<!-- zsh startup time -->
Note on zsh startup time: see the comments in the files it links.

<!-- tmux -->
Note on tmux: see the comments in the files it links.

## bin

Small scripts that end up on PATH. `doctor` is the one to run first on a
new machine: it lists what the config expects and cannot find.

## Layout

One directory per tool, linked into place by `install.sh`. Nothing here
reads from outside the repo, so a clone plus the installer is the whole
setup.

## Linux

The Brewfile is macos only. On linux the package names mostly match and
`bin/doctor` tells you which ones are missing.
