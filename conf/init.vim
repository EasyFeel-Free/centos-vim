""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plugin
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Plug {{{
call plug#begin('~/.config/nvim/plugged')

"Git appear in file change
Plug 'airblade/vim-gitgutter'	
"Auto Complete "", {} , ''
"Plug 'jiangmiao/auto-pairs'	
"Comment easy
"Example comment 2 line in insertmode only:
"press: 2\cc
Plug 'scrooloose/nerdcommenter'

"File exploer
Plug 'scrooloose/nerdTree'
"Search in current folder
"Switch between file
"Press: Ctrl+p
Plug 'ctrlpvim/ctrlp.vim'
"Motion go to the character
"Pree : \s
"Input character u want to go to
"Input which line
Plug 'easymotion/vim-easymotion'
"Colorful tabline
Plug 'bling/vim-airline'
"Folding
Plug 'tmhedberg/SimpylFold'
call plug#end()
" }}}
"
"For Plug vim-gitgutter
set updatetime=100
"For nerdTREE Exploer
"Press ctrl+e to open
map <C-e> :NERDTreeToggle<CR>
"For easymotion
map <Leader> <Plug>(easymotion-prefix)


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors and Fonts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Enable syntax highlighting
syntax enable 

" Enable 256 colors palette in Gnome Terminal
if $COLORTERM == 'gnome-terminal'
    set t_Co=256
endif

try
    colorscheme desert
catch
endtry

set background=dark

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

" Use Unix as the standard file type
set ffs=unix,dos,mac

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Files, backups and undo
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowb
set noswapfile

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use spaces instead of tabs
set expandtab

" Be smart when using tabs ;)
set smarttab

" 1 tab == 2 spaces
set shiftwidth=2
set tabstop=2

" Linebreak on 500 characters
"set lbr
"set tw=500<Paste>


set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines


"Folding
"Fold open 1
nmap fo zO
"Fold close 1
nmap fc zC
"Fold open all
nmap f zR
"Fold close all
nmap ff zM
