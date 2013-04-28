"vundle configure
set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle
call vundle#rc()

" let Vundle manage Vundle
Bundle 'gmarik/vundle'



" bundle manage
Bundle 'git://github.com/altercation/vim-colors-solarized.git'
Bundle 'git://github.com/majutsushi/tagbar.git'
Bundle 'git://github.com/Lokaltog/vim-powerline.git'
Bundle 'git://github.com/orenhe/pylint.vim.git'
Bundle 'neocomplcache'

" enable neocomplcache 
let g:neocomplcache_enable_at_startup = 1
let g:neocomplcache_enable_auto_select = 1
" don't show scratch window
set completeopt-=preview


" global display
" remove scroll bar
set guioptions-=r
" disable menu, toolbar
set guioptions-=m
set guioptions-=T

set number
syntax on
filetype plugin on
filetype plugin indent on 



" colorscheme
syntax enable
if has('gui_running')
    "set background=light
    set background=dark
    colorscheme solarized
else
    set background=light
endif

set hlsearch

" syntax highlight
let python_highlight_all=1



" character encoding
set fileencodings=utf-8,gb18030,utf-16,big5


" my keymap
nmap <S-T> :TagbarToggle<CR>


" powerline
" always show status bar
set laststatus=2
"set guifont=PowerlineSymbols\ for\ Powerline
"set guifont=DejaVu\ Sans\ Mono
"let g:Powerline_symbols = 'fancy'


" pylint configuration
autocmd FileType python compiler pylint
let g:pylint_onwrite = 0


" buffers
set switchbuf=usetab

