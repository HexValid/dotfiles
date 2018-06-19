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
set noswapfile
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
	Plugin 'Shougo/neocomplete.vim'
call vundle#end()
"neocomplete
"let g:acp_enableAtStartup = 0
let g:neocomplete#enable_at_startup = 1
let g:neocomplete#enable_smart_case = 1
let g:neocomplete#sources#syntax#min_keyword_length = 2
"inoremap <expr><S-z>     neocomplete#undo_completion()
"inoremap <expr><S-b>     neocomplete#complete_common_string()
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS

if !exists('g:neocomplete#sources#omni#input_patterns')
  let g:neocomplete#sources#omni#input_patterns = {}
endif


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
colorscheme molokai
hi Normal ctermbg=none
let g:molokai_original = 1
let g:rehash256 = 1


