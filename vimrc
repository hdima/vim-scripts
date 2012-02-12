" VIM 7 configuration file
" Maintainer:   Dmitry Vasiliev <dima at hlabs dot org>
" URL:          https://github.com/hdima/vim-scripts/blob/master/vimrc
" Last Change:  2012-02-12
" Version:      0.7

" Not compatible with Vi
set nocompatible

" GUI options
if has("gui_running")
    " Make gvim looks more like vim
    set guioptions+=acghiM
    set guioptions-=e
    set guioptions-=mrLtT

    set guifont=DejaVu\ Sans\ Mono\ 9

    " Disable pasting text on mouse middle button click
    map <MiddleMouse> <Nop>
    imap <MiddleMouse> <Nop>
    map <2-MiddleMouse> <Nop>
    imap <2-MiddleMouse> <Nop>
    map <3-MiddleMouse> <Nop>
    imap <3-MiddleMouse> <Nop>
    map <4-MiddleMouse> <Nop>
    imap <4-MiddleMouse> <Nop>

    set columns=169
    set lines=999
endif

" Automatically insert comment character if we need to
set formatoptions+=ntcroq21

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
set shortmess+=asWAI
set showtabline=0
set wildmenu
set laststatus=2
set statusline=%f%=\ %Y\ %c%V,%l/%L\ [%M%n%W]:%{tabpagenr()}

set helpheight=12
set winminheight=0

set sidescroll=15

" Nice :list and :set list
set listchars=tab:>-,trail:.,extends:+,eol:$,precedes:+

set fillchars="vert: ,fold: "

" Fold options
set foldmethod=syntax
set foldnestmax=1
set nofoldenable

" Diff options
set diffopt=filler,context:3

set virtualedit=block

" Always save some info for next time
set history=100
set viminfo='100,h,%
set sessionoptions+=winpos
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

" Turn off backup files
set nobackup
" Turn off swap files
set updatecount=0

" It's not an MS Word clone
set secure

set fileencodings=ucs-bom,utf-8,cp1251,default,latin1

" Color scheme
color peachpuff

" Highlight syntax
syntax enable

" Python syntax options
let python_highlight_all = 1

" Indent commands
com SpaceIndent :set tabstop=4| set shiftwidth=4| set expandtab
com TabIndent :set tabstop=8| set shiftwidth=8| set noexpandtab
" 4 space indent by default
SpaceIndent

set tags+=~/erlang-tags

" GUI options
if has("gui_running")
    vsplit
endif
