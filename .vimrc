map <F9> :NERDTreeToggle<CR>
map <F2> :GoDoc<CR>
map <F3> :GoInfo<CR>
map <F4> :GoFmt<CR>
map <F5> :GoRun<CR>
map <F6> :GoRename<CR>
let g:go_fmt_autosave = 0
let g:go_highlight_function_calls = 1
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_operators = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_build_constraints = 1

inoremap <Up> <nop>
vnoremap <Up> <NOP>
inoremap <Down> <NOP>
vnoremap <Down> <NOP>
inoremap <Left> <NOP>
vnoremap <Left> <NOP>
inoremap <Right> <NOP>
vnoremap <Right> <NOP>
inoremap <Esc> <NOP>
inoremap jj <Esc>
noremap ı <Insert>
noremap İ <Insert>
syntax on
filetype on
filetype plugin on
set noexpandtab tabstop=4 shiftwidth=4 
set history=64
set nocompatible
set backspace=indent,eol,start
set ruler
set nowrap
set hlsearch
set ignorecase
set smartcase
set number
set relativenumber
set list
set listchars=tab:▸\ ,eol:¬
set laststatus=2
set noshowmode
set colorcolumn=80
call vundle#begin()
    Plugin 'itchyny/lightline.vim'
 	Plugin 'PotatoesMaster/i3-vim-syntax'
    Plugin 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
    Plugin 'scrooloose/nerdtree'
	Plugin 'fatih/molokai'
	Plugin 'stevearc/vim-arduino'
call vundle#end()

let g:arduino_dir = '/usr/share/arduino/'

colorscheme molokai
let g:molokai_original = 1
let g:rehash256 = 1
let g:lightline = {'colorscheme': 'molokai'}


