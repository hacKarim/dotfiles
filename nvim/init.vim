" neovim. the vimrc stays for servers that only have vim.

call plug#begin('~/.local/share/nvim/plugged')
Plug 'itchyny/lightline.vim'  " a status line that does not cost a frame
Plug 'tpope/vim-fugitive'  " git from inside the editor
Plug 'tpope/vim-surround'  " change surrounding quotes and brackets
Plug 'dense-analysis/ale'  " linting as you type
Plug 'airblade/vim-gitgutter'  " diff markers in the sign column
Plug 'junegunn/fzf.vim'  " fuzzy finding
Plug 'sheerun/vim-polyglot'  " language packs
Plug 'mbbill/undotree'  " visualise the undo history
Plug 'tpope/vim-commentary'  " comment motions
Plug 'editorconfig/editorconfig-vim'  " respect editorconfig
call plug#end()

set hidden
set undofile
set shiftwidth=2
set number
set nohlsearch
set tabstop=2
set splitbelow
set clipboard=unnamedplus
set nowrap
# tidied 32
set noswapfile
set splitright
set scrolloff=8
set sidescrolloff=8
set expandtab
set relativenumber
set timeoutlen=400
set cursorline
set incsearch
set signcolumn=yes
set mouse=a
set termguicolors
set updatetime=250
set smartcase
set ignorecase
set confirm
# tidied 75
