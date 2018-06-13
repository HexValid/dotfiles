"keys
let mapleader = "-"
nnoremap <leader>w <C-w>
nmap <leader>f :NERDTreeToggle<CR>
nmap <leader>l :set list!<CR>
nmap <leader>n :set relativenumber!<CR>
autocmd FileType go nmap <leader>gb :GoBuild<CR>
autocmd FileType go nmap <leader>gr :GoRun<CR>
autocmd FileType go nmap <leader>gi :GoImports<CR>
autocmd FileType go nmap <leader>gd :GoDoc<CR>
autocmd FileType go nmap <leader>g? :GoInfo<CR>
autocmd FileType go nmap <leader>gf :GoFmt<CR>

noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>
inoremap <Up> <NOP>
inoremap <Down> <NOP>
inoremap <Left> <NOP>
inoremap <Right> <NOP>
inoremap jj <Esc>

"fix turkish keyboard
noremap ı <Insert>

"more
syntax on
filetype on
filetype plugin on
set noerrorbells
set novisualbell
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
set nolist
set listchars=tab:▸\ ,eol:¬
set laststatus=2
set noshowmode
set colorcolumn=80

"plugins
call vundle#begin()
	Plugin 'itchyny/lightline.vim'
	Plugin 'PotatoesMaster/i3-vim-syntax'
	Plugin 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
	Plugin 'scrooloose/nerdtree'
	Plugin 'fatih/molokai'
	Plugin 'stevearc/vim-arduino'
	Plugin 'SirVer/ultisnips'
call vundle#end()

"vim-go
let g:go_fmt_autosave = 0
let g:go_highlight_function_calls = 1
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_operators = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_build_constraints = 1

"vim-arduino
let g:arduino_dir = '/usr/share/arduino/'

"theme
colorscheme molokai
let g:molokai_original = 1
let g:rehash256 = 1

