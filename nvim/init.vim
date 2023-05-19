" neovim. the vimrc stays for servers that only have vim.

call plug#begin('~/.local/share/nvim/plugged')
Plug 'itchyny/lightline.vim'  " a status line that does not cost a frame
Plug 'tpope/vim-fugitive'  " git from inside the editor
Plug 'tpope/vim-surround'  " change surrounding quotes and brackets
Plug 'dense-analysis/ale'  " linting as you type
Plug 'airblade/vim-gitgutter'  " diff markers in the sign column
Plug 'junegunn/fzf.vim'  " fuzzy finding
Plug 'sheerun/vim-polyglot'  " language packs
call plug#end()

set hidden
set undofile
set shiftwidth=2
set number
set nohlsearch
set tabstop=2
set splitbelow
