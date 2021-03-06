" Vim color file
" Maintainer:	Bohdan Vlasyuk <bohdan@vstu.edu.ua>
" Last Change:	2008 Jul 18

" darkblue -- for those who prefer dark background
" [note: looks bit uglier with come terminal palettes,
" but is fine on default linux console palette.]

set bg=dark
hi clear
if exists("syntax_on")
	syntax reset
endif

let colors_name = "darkgreen"

hi Normal		guifg=#d3d0c8		guibg=#2d2d2d		ctermfg=white		ctermbg=black
hi ErrorMsg		guifg=#ffffff 		guibg=#287eff		ctermfg=white		ctermbg=lightblue
hi Visual		guifg=#8080ff		guibg=fg		gui=reverse		ctermfg=green		ctermbg=fg 		cterm=reverse
hi VisualNOS		guifg=#8080ff 		guibg=fg		gui=reverse,underline	ctermfg=lightblue 	ctermbg=fg 		cterm=reverse,underline
hi Todo			guifg=#2d2d2d 		guibg=#6699cc		ctermfg=black		ctermbg=darkblue
hi Search		guifg=#90fff0 		guibg=#2050d0		ctermfg=darkgreen	ctermbg=black	cterm=reverse 	term=underline
hi IncSearch		guifg=#b0ffff 		guibg=#2050d0		ctermfg=darkblue 	ctermbg=black

hi SpecialKey		guifg=cyan		ctermfg=darkcyan
hi Directory		guifg=cyan		ctermfg=cyan
hi Title		guifg=magenta 		gui=none 		ctermfg=magenta 	cterm=bold
hi WarningMsg		guifg=red		ctermfg=red
hi WildMenu		guifg=yellow 		guibg=black 		ctermfg=darkgreen 	ctermbg=black 		cterm=bold 		term=none
hi ModeMsg		guifg=#22cce2		ctermfg=lightblue
hi MoreMsg		ctermfg=darkgreen
hi Question		guifg=green 		gui=none 		ctermfg=green 		cterm=none
hi NonText		guifg=#0030ff					ctermfg=darkblue

hi StatusLine		guifg=blue 		guibg=darkgray 		gui=none		ctermfg=black 		ctermbg=green 		term=none 		cterm=none
hi StatusLineNC		guifg=black		guibg=darkgray 		gui=none		ctermfg=black 		ctermbg=gray 		term=none 		cterm=none
hi VertSplit		guifg=black 		guibg=darkgray 		gui=none		ctermfg=black 		ctermbg=gray 		term=none 		cterm=none

hi Folded		guifg=#808080 		guibg=#000040		ctermfg=darkgrey 	ctermbg=black 		cterm=bold term=bold
hi FoldColumn		guifg=#808080 		guibg=#000040		ctermfg=darkgrey 	ctermbg=black 		cterm=bold term=bold
hi LineNr		guifg=#99cc99					ctermbg=green 		ctermfg=black 		cterm=none

hi DiffAdd		guibg=darkblue		ctermbg=darkblue 	term=none		cterm=none
hi DiffChange		guibg=darkmagenta 	ctermbg=magenta 	cterm=none
hi DiffDelete		ctermfg=blue		ctermbg=cyan 		gui=bold 		guifg=Blue 		guibg=DarkCyan
hi DiffText		cterm=bold		ctermbg=red 		gui=bold 		guibg=Red

hi Cursor		guifg=black		guibg=green 		ctermfg=black 		ctermbg=green
hi lCursor		guifg=black 		guibg=white 		ctermfg=black 		ctermbg=white

hi Comment		guifg=#99cc99 		ctermfg=darkgreen
hi Constant		ctermfg=green 		guifg=#ffcc66 		cterm=none
hi Special		ctermfg=brown 		guifg=Orange 		cterm=none		gui=none
hi Identifier		ctermfg=cyan 		guifg=#40ffff		cterm=none
hi Statement		ctermfg=blue 		guifg=#6699cc 		gui=bold 		cterm=bold
hi PreProc		ctermfg=blue 		guifg=#6699cc 		gui=bold 		cterm=bold
hi type			ctermfg=green 		guifg=#99cc99 		gui=none 		cterm=none
hi Underlined		cterm=underline 	term=underline
hi Ignore		guifg=bg 		ctermfg=bg
hi Operator     	ctermfg=Red         	guifg=Red
hi Function		ctermfg=Red         	guifg=Red

" suggested by tigmoid, 2008 Jul 18
hi Pmenu 		guifg=#c0c0c0 		guibg=#404080
hi PmenuSel 		guifg=#c0c0c0 		guibg=#2050d0
hi PmenuSbar 		guifg=blue 		guibg=darkgray
hi PmenuThumb 		guifg=#c0c0c0
