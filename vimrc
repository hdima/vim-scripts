" VIM 7 configuration file
" Maintainer:   Dmitry Vasiliev <dima at hlabs dot org>
" URL:          https://github.com/hdima/vim-scripts/blob/master/vimrc
" Last Change:  2012-02-11
" Version:      0.3

" Not compatible with Vi
set nocompatible

" GUI options
if has("gui")
    set guioptions+=abghr
    set guioptions-=T

    set gfn=DejaVu\ Sans\ Mono\ 9
    "set gfn=Liberation\ Mono\ 9

    set guipty

    set columns=175
    "set lines=999
    set lines=64
endif

" Disable pasting text on mouse middle button click
map <MiddleMouse> <Nop>
imap <MiddleMouse> <Nop>
map <2-MiddleMouse> <Nop>
imap <2-MiddleMouse> <Nop>
map <3-MiddleMouse> <Nop>
imap <3-MiddleMouse> <Nop>
map <4-MiddleMouse> <Nop>
imap <4-MiddleMouse> <Nop>

" Automatically insert comment character if we need to
set formatoptions+=ntcroq2

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
set shortmess-=aI
set shortmess+=T

set wildmenu
set laststatus=2
set statusline=%<%f\ [%Y%R%W]%1*%{(&modified)?'\ [+]\ ':''}%*%=%c%V,%l\ %P\ [%n]

set helpheight=12
set winminheight=0

" I want to see some context around
set scrolloff=0
set sidescrolloff=0
" ...and maybe even all around
" set scrolloff=999
set sidescroll=15

" Key mapping for Russian QWERTY keyboard in UTF-8
map й q
map ц w
map у e
map к r
map е t
map н y
map г u
map ш i
map щ o
map з p
map х [
map ъ ]
map ф a
map ы s
map в d
map а f
map п g
map р h
map о j
map л k
map д l
map ж ;
map э '
map я z
map ч x
map с c
map м v
map и b
map т n
map ь m
map б ,
map ю .

" Nice :list or :set list
set listchars=tab:>-,trail:.,extends:+,eol:$,precedes:+

set fillchars="vert: ,fold:-"

" Fold options
set foldcolumn=0
set foldmethod=syntax
set foldnestmax=2
set nofoldenable

" Diff options
set diffopt=filler,context:3

" Always save some info for next time
set history=2000
set viminfo='200,h,%
" Don't save options to session file - it's possibly buggy
set sessionoptions-=options

" Pretty select with mouse and shifted special keys
behave mswin
" ...but not reset selection with not-shifted special keys
set keymodel-=stopsel
set selection=inclusive

set number
set numberwidth=4

set wildignore=*.swp,*.swo,*.beam,*.pyc,*.*~

set nobackup
set noswapfile

" Highlight syntax
syntax on

filetype plugin on
filetype indent off

" It's not an MS Word clone
set secure

set fileencodings=ucs-bom,utf-8,cp1251,default,latin1

" Color scheme
" color desert
set background=dark
color solarized

" Python syntax options
let python_highlight_all = 1

" Indent commands
com SpaceIndent :set tabstop=4| set shiftwidth=4| set expandtab
com TabIndent :set tabstop=8| set shiftwidth=8| set noexpandtab
SpaceIndent

set tags+=~/erlang-tags

vsplit
