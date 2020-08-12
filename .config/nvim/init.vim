"     _    _
"    / \  | | __ _ _ __  _ __      Alann Santos
"   / _ \ | |/ _` | '_ \| '_ \     https://github.com/alannssantos
"  / ___ \| | (_| | | | | | | |
" /_/   \_\_|\__,_|_| |_|_| |_|

" ----------------------------- Settings Begin -----------------------------
"
" show number line
set number
set encoding=UTF-8

" Always show statusline
set laststatus=2
set smartindent
set incsearch
set hlsearch
set wildmenu
set path+=**
set confirm

" ----------------------------- Settings End -----------------------------

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

	" ==== plugin manager
	" sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

	" ==== Themes
	Plug 'vim-airline/vim-airline'		" Airline
	Plug 'vim-airline/vim-airline-themes'	" Airline Themes
	Plug 'ap/vim-css-color'
	Plug 'joshdick/onedark.vim'

	" ==== Python Syntax
	Plug 'vim-python/python-syntax'
	Plug 'valloric/youcompleteme'
	
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

" ----------------------------- Theme Begin -----------------------------
"
colorscheme darkgreen
hi Normal ctermbg=none

" ----------------------------- Theme End -----------------------------

" --------------------------- Airline Begin ---------------------------
"
" vim-devicons
let g:DevIconsEnableFoldersOpenClose = 1

let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols = {}
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['html'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['js'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['json'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['jsx'] = 'ﰆ'
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['md'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['vim'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['yaml'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['yml'] = ''

let g:WebDevIconsUnicodeDecorateFileNodesPatternSymbols = {}
let g:WebDevIconsUnicodeDecorateFileNodesPatternSymbols['.*vimrc.*'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesPatternSymbols['.gitignore'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesPatternSymbols['package.json'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesPatternSymbols['package.lock.json'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesPatternSymbols['node_modules'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesPatternSymbols['webpack\.'] = 'ﰩ'

let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_theme='angr'

" ----------------------------- Airline End -----------------------------

" --------------------------- Mappings Begin ----------------------------
"
" Maps
map q :bw<CR>
map =x :!chmod +x %<CR>
map sc :!clear && shellcheck %<CR>
map rf :!clear && ./%<CR>
map <C-f> :FZF -e<CR>
map <C-t> :Buffers<CR>
map <Tab> :bn<CR>

" Copiar e Colar X11
vmap <C-c> :!xclip -f -sel clip<CR>

" ----------------------------- Mappings End -----------------------------
