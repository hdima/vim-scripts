" VIM 6.x configuration file
" Dmitry Vasiliev (dima@hlabs.spb.ru)
" $Id$
"

" It's not vi
set nocompatible

" Some stuff for gui
if has("gui")
	" Scrollbars is good for gui
	set guioptions+=b
	" Do you need the toolbar?
	set guioptions-=T

	" set cmdheight=2

	set guifont=-adobe-courier-medium-r-normal-*-*-120-*-*-m-*-microsoft-cp1251
	"set guifont=courier_new_cyr:h7

	" My GUI colors
	set background=light

	if &background == "dark"
		hi Normal guifg=grey87 guibg=black
		hi Visual gui=italic guifg=black guibg=grey75
	else
		hi Normal guifg=Black guibg=Grey80
		hi Visual gui=italic guifg=Brown guibg=Grey90
		hi StatusLine gui=bold,italic guifg=Brown guibg=Grey90
		hi StatusLineNC gui=italic guifg=Brown guibg=Grey85
		hi VertSplit gui=italic guifg=Brown guibg=Grey85
		hi WildMenu gui=bold,italic
		" Modification flag color
		hi User1 gui=bold,italic guifg=Yellow guibg=Red
	endif

	set lines=50
endif

" PHP syntax options
let php_sql_query = 1
let php_htmlInStrings = 1
let php_parent_error_close = 1
let php_parent_error_open = 1
let php_folding = 1

" Python syntax options
let python_highlight_all = 1

" Defines for C and PHP
set define=\\(^\\s*#\\s*define\\)
set define+=\\\|\\(define\\s*(\\)

" Includes for C and PHP
set include=\\(^\\s*#\\s*include\\)
set include+=\\\|\\(\\(require\\\|include\\)\\(_once\\)*\\s*(\\)

" Match HTML tag delimitters
set matchpairs+=<:>

" Automatically insert comment character if we need it
set formatoptions=tcroq

" Highlight and autocomplete search
set hlsearch
set incsearch

" Some automatic cursor moving
set autoindent
set nostartofline

" Don't make chaos on my display
set nowrap
set backspace=indent,eol,start
set nojoinspaces

" Some information is always good 
set showfulltag
set report=0
set shortmess=at

set wildmenu
set laststatus=2
set statusline=%<%f\ [%Y%R%W]%1*%{(&modified)?'\ [+]\ ':''}%*%=%c%V,%l\ %P\ [%n]

set helpheight=12
set winminheight=0

" I want to see some context around
set scrolloff=2
set sidescrolloff=5
" ...and maybe even all around
" set scrolloff=999
set sidescroll=15

" Map keys for CP1251
set langmap=ÉQ,ÖW,ÓE,ÊR,ÅT,ÍY,ÃU,ØI,ÙO,ÇP,Õ{,Ú},ÔA,ÛS,ÂD,ÀF,ÏG
set langmap+=ÐH,ÎJ,ËK,ÄL,Æ:,Ý\",ßZ,×X,ÑC,ÌV,ÈB,ÒN,ÜM,Á<,Þ>
set langmap+=éq,öw,óe,êr,åt,íy,ãu,øi,ùo,çp,õ[,ú],ôa,ûs,âd,àf,ïg
set langmap+=ðh,îj,ëk,äl,æ\\;,ý',ÿz,÷x,ñc,ìv,èb,òn,üm,á\,,þ.

" Map keys for KOI8-R
" set langmap=êQ,ãW,õE,ëR,åT,îY,çU,ûI,ýO,úP,è{,æA,ùS,÷D,áF,ðG
" set langmap+=òH,ïJ,ìK,äL,ö:,ü\",ñZ,þX,óC,íV,éB,ôN,øM,â<,à>
" set langmap+=Êq,Ãw,Õe,Ër,Åt,Îy,Çu,Ûi,Ýo,Úp,È[,Æa,Ùs,×d,Áf,Ðg
" set langmap+=Òh,Ïj,Ìk,Äl,Ö\\;,Ü',Ñz,Þx,Óc,Ív,Éb,Ôn,Øm,Â\,,À.

" Nice :list or :set list
set listchars=tab:>-,trail:.,extends:+,eol:$,precedes:+

set fillchars="vert: ,fold:-"

" Fold options
set foldcolumn=4
set columns=84
" I'm not sure about that...
set foldnestmax=3
" set foldmethod=indent
set foldmethod=syntax

" Diff options
set diffopt=filler,context:3

" Always save some info for next time
set history=2000
set viminfo='200,h,%
" Don't save options to session file - it's possibly buggy
set sessionoptions=buffers,winsize,help,blank,slash,unix

" Pretty select with mouse and shifted special keys
behave mswin
" ...but not reset selection with not-shifted special keys
set keymodel-=stopsel
set selection=inclusive

" Highlight syntax
syntax on

filetype plugin indent on

" It's not an MS Word clone
set secure

" Indent commands
com PyIndent :set tabstop=4| set shiftwidth=4| set expandtab
com MyIndent :set tabstop=8| set shiftwidth=8| set noexpandtab
