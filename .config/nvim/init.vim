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
	Plug 'morhetz/gruvbox' " Gruvbox Theme
	Plug 'vim-airline/vim-airline'		" Airline
	Plug 'vim-airline/vim-airline-themes'	" Airline Themes
	Plug 'ryanoasis/vim-devicons'

	" ==== Syntax
	Plug 'sheerun/vim-polyglot'
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	Plug 'ntpeters/vim-better-whitespace'
	Plug 'preservim/nerdcommenter'

	" ==== Utility
	Plug 'junegunn/fzf'
	Plug 'junegunn/fzf.vim'
	Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & npm install'  }
	Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }

" All of your Plugins must be added before the following line
call plug#end()            " required

" Automatically install missing plugins on startup
autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif

" ----------------------------- Plugins End -----------------------------

" --------------------------- Plug-config Begin ---------------------------

source $HOME/.config/nvim/plug-config/coc.vim
source $HOME/.config/nvim/plug-config/airline.vim
source $HOME/.config/nvim/plug-config/markdown-preview.vim

" Vim-latex-live-preview
let g:livepreview_previewer = 'zathura'

" --------------------------- Plug-config End -----------------------------

" --------------------------------------------------------------------------
" --------------------------------------------------------------------------
" --------------------------------------------------------------------------

" ----------------------------- Settings Begin -----------------------------
"
" show number line
set number
set encoding=UTF-8
au BufWinLeave * mkview
au BufWinEnter * silent! loadview

" Always show statusline
set laststatus=2
set smartindent
set incsearch
set hlsearch
set wildmenu
set foldmethod=marker
set path+=**
set confirm

" Leader key
let mapleader="\<space>"

" Maps
map <leader>q :bw<CR>
map <leader>f :FZF -e<CR>
map <leader>s :!clear && shellcheck -x %<CR>
map <leader>t :!tmux split-window -v -p 20<CR>
map <leader>nl :%s/^/\=printf('%03d', line('.'))<CR>
map <leader><Tab> :bn<CR>

" Copiar e Colar X11
vmap <C-c> :!xclip -f -sel clip<CR>

" Theme
colorscheme gruvbox
hi Normal ctermbg=none

" ----------------------------- Settings End -----------------------------
