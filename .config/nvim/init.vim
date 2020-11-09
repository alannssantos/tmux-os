"     _    _
"    / \  | | __ _ _ __  _ __      Alann Santos
"   / _ \ | |/ _` | '_ \| '_ \     https://github.com/alannssantos
"  / ___ \| | (_| | | | | | | |
" /_/   \_\_|\__,_|_| |_|_| |_|


" ----------------------------- Plugins Begin -----------------------------
"
" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/plugged')

	" ==== Themes
	Plug 'vim-airline/vim-airline'		" Airline
	Plug 'vim-airline/vim-airline-themes'	" Airline Themes
	Plug 'ap/vim-css-color'

	" ==== Python Syntax
	Plug 'vim-python/python-syntax'
	Plug 'valloric/youcompleteme'
	Plug 'jiangmiao/auto-pairs'
	Plug 'ntpeters/vim-better-whitespace'
	Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & npm install'  }
	
	" ==== File tree
	Plug 'ryanoasis/vim-devicons'
	Plug 'junegunn/fzf'
	Plug 'junegunn/fzf.vim'

" All of your Plugins must be added before the following line
call plug#end()            " required

" Automatically install missing plugins on startup
autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif

" ----------------------------- Plugins End -----------------------------

" --------------------------- Plug-config Begin ---------------------------

source $HOME/.config/nvim/plug-config/airline.vim
source $HOME/.config/nvim/plug-config/markdown-preview.vim

" --------------------------- Plug-config End -----------------------------

" --------------------------------------------------------------------------
" --------------------------------------------------------------------------
" --------------------------------------------------------------------------

" ----------------------------- Settings Begin -----------------------------
"
" show number line
set number
set encoding=UTF-8

" g Leader key
let mapleader=" "

" Always show statusline
set laststatus=2
set smartindent
set incsearch
set hlsearch
set wildmenu
set path+=**
set confirm

" Maps
map q :bw<CR>
map <Tab> :bn<CR>
map <C-f> :FZF -e<CR>
map <leader>sc :!clear && shellcheck %<CR>
map <leader>rf :!clear && ./%<CR>
map <leader>nl :%s/^/\=printf('%04d', line('.'))<CR>
map <leader>t :!tmux split-window -v -p 20<CR>

" Copiar e Colar X11
vmap <C-c> :!xclip -f -sel clip<CR>

" Theme
colorscheme darkgreen
hi Normal ctermbg=none

" ----------------------------- Settings End -----------------------------
