"keys
let mapleader = "\<space>"
nnoremap <leader>w <C-w>
nmap <leader>f :NERDTreeToggle<CR>
nmap <leader>l :set list!<CR>
nmap <leader>n :set relativenumber!<CR>

"toggle colorcolumn
command! ToggleCC :let &cc = &cc == '' ? '80' : ''
nmap <leader>c :let &cc = &cc == '' ? '80' : ''<CR>

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
set encoding=utf-8
set autoindent
set smartindent
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
set norelativenumber
set nolist
set listchars=tab:→\ ,eol:¬
set laststatus=2
set noshowmode

"plugins
call vundle#begin()
	Plugin 'itchyny/lightline.vim'
	Plugin 'PotatoesMaster/i3-vim-syntax'
	Plugin 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
	Plugin 'scrooloose/nerdtree'
	Plugin 'stevearc/vim-arduino'
	Plugin 'SirVer/ultisnips'
	Plugin 'Shougo/neocomplete.vim'
	Plugin 'morhetz/gruvbox'
call vundle#end()

"nerdtree
let NERDTreeMinimalUI = 1
let g:NERDTreeDirArrowExpandable="→"
let g:NERDTreeDirArrowCollapsible="↓"
let g:NERDTreeShowBookmarks = 1
let g:NERDTreeShowHidden = 1
let g:NERDTreeQuitOnOpen = 1

"neocomplete
let g:acp_enableAtStartup = 0
let g:neocomplete#enable_auto_select = 1
let g:neocomplete#enable_at_startup = 1
let g:neocomplete#enable_smart_case = 1
let g:neocomplete#enable_auto_delimiter=1
let g:neocomplete#sources#syntax#min_keyword_length = 2
inoremap <expr><leader><tab>     neocomplete#complete_common_string()


"ultisnips
let g:UltiSnipsExpandTrigger="<tab>"
"let g:UltiSnipsJumpForwardTrigger="<S-b>"
"let g:UltiSnipsJumpBackwardTrigger="<S-z>"

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
colorscheme gruvbox
let g:lightline = {}
let g:lightline.colorscheme = 'gruvbox'
