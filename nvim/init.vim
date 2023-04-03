" neovim. the vimrc stays for servers that only have vim.

call plug#begin('~/.local/share/nvim/plugged')
Plug 'itchyny/lightline.vim'  " a status line that does not cost a frame
call plug#end()

set hidden
set undofile
