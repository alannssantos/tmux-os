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

" Theme
colorscheme darkgreen
hi Normal ctermbg=none

" Maps
map f :find 
map q :bw<CR>
map =x :!chmod +x %<CR>
map sc :!clear && shellcheck %<CR>
map rf :!clear && ./%<CR>
map <C-f> :FZF -e<CR>
map <C-t> :Buffers<CR>
map <Tab> :bn<CR>

" Copiar e Colar X11
vmap <C-c> :!xclip -f -sel clip<CR>

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" ==== plugin manager
" $ git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
Plugin 'VundleVim/Vundle.vim'

" ==== Themes
" Plugin 'itchyny/lightline.vim'
Plugin 'vim-airline/vim-airline'              " Airline
Plugin 'vim-airline/vim-airline-themes'				" Airline Themes
Plugin 'ap/vim-css-color'

" ==== Python Syntax
Plugin 'vim-python/python-syntax'
Plugin 'valloric/youcompleteme'

" ==== File tree
Plugin 'ryanoasis/vim-devicons'
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required

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
