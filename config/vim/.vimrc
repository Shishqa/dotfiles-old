"###############################################################################
"
"      ██╗   ██╗██╗███╗   ███╗██████╗  ██████╗
"      ██║   ██║██║████╗ ████║██╔══██╗██╔════╝
"      ██║   ██║██║██╔████╔██║██████╔╝██║     
"      ╚██╗ ██╔╝██║██║╚██╔╝██║██╔══██╗██║     
"    ██╗╚████╔╝ ██║██║ ╚═╝ ██║██║  ██║╚██████╗
"    ╚═╝ ╚═══╝  ╚═╝╚═╝     ╚═╝╚═╝  ╚═╝ ╚═════╝
"
"    Edited by Shishqa
"
"###############################################################################

if filereadable(expand("~/.config/vim/.vimrc.plug"))
    source ~/.config/vim/.vimrc.plug
endif

set viminfo=%,<800,'10,/50,:100,h,f0,n~/.config/vim/cache/.viminfo
"           | |    |   |   |    | |  + viminfo file path
"           | |    |   |   |    | + file marks 0-9,A-Z 0=NOT stored
"           | |    |   |   |    + disable 'hlsearch' loading viminfo
"           | |    |   |   + command-line history saved
"           | |    |   + search history saved
"           | |    + files marks saved
"           | + lines saved each register (old name for <, vi6.2)
"           + save/restore buffer list

"###############################################################################

set history=500

filetype plugin on
filetype indent on

set autoread
au FocusGained,BufEnter * checktime

let mapleader = ","

nmap <leader>w :w!<cr>
nmap <leader>q :wq!<cr>

inoremap <F3> <c-o>:w<cr>

command! W execute 'w !sudo tee % > /dev/null' <bar> edit!

"###############################################################################

colorscheme MyTheme

set so=7

syntax enable

set wildmenu

set ruler
set number relativenumber

" Height of the command bar
set cmdheight=1

" A buffer becomes hidden when it is abandoned
set hid

" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" Ignore case when searching
set ignorecase

" When searching try to be smart about cases
set smartcase

" Highlight search results
set hlsearch

" Makes search act like search in modern browsers
set incsearch

" Don't redraw while executing macros (good performance config)
set lazyredraw

" For regular expressions turn magic on
set magic

" Show matching brackets when text indicator is over them
set showmatch
" How many tenths of a second to blink when matching brackets
set mat=2

" Use spaces instead of tabs
set expandtab

" Be smart when using tabs ;)
set smarttab

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

" Linebreak on 500 characters
set lbr
set tw=500

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines

set encoding=utf8
set ffs=unix

"###############################################################################

" Always show the status line
set laststatus=2

" Format the status line
set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l\ \ Column:\ %c

function! HasPaste()
    if &paste
        return 'PASTE MODE  '
    endif
    return ''
endfunction

"###############################################################################

let g:asmsyntax = 'nasm'

"TODO: ultisnips configure

" Trigger configuration
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

" :UltiSnipsEdit split window.
let g:UltiSnipsEditSplit="vertical"


"###############################################################################

"TODO: vimtex configure

let g:tex_flavor='latex'
let g:vimtex_view_method='zathura'
let g:vimtex_quickfix_mode=0
set conceallevel=1
let g:tex_conceal='abdmg'


"###############################################################################
"
"             ███████╗ ██████╗ ███████╗
"             ██╔════╝██╔═══██╗██╔════╝
"             █████╗  ██║   ██║█████╗  
"             ██╔══╝  ██║   ██║██╔══╝  
"             ███████╗╚██████╔╝██║     
"             ╚══════╝ ╚═════╝ ╚═╝     
"
"###############################################################################
