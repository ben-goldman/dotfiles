execute pathogen#infect()

set nocompatible
if has('termguicolors')
set termguicolors
endif
syntax on
filetype plugin indent on
set autoindent
set expandtab smarttab
set tabstop=4
set shiftwidth=4
colorscheme onedark
set guifont=SauceCodePro\ Nerd\ Font:h12
set linespace=0
set backspace=indent,eol,start
set clipboard=unnamed

inoremap <C-h> <C-o>de

noremap t j
noremap n k
noremap s l

noremap l s
noremap k n
noremap j t

noremap u a
noremap a i
noremap e O

noremap i x
noremap <C-u> u

noremap <C-h> b
noremap <C-s> w
noremap <C-t> }
noremap <C-n> {

noremap U A
noremap A I

noremap T G
noremap N gg
noremap S $
noremap H 0

inoremap <C-d> <ESC>
nnoremap <C-d> :w<CR>
vnoremap <C-d> <ESC>

if !exists('g:airline_symbols')
	let g:airline_symbols = {}
endif

let g:airline#extensions#tabline#enabled = 1
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.colnr = ' :'
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ' :'
let g:airline_symbols.maxlinenr = '☰ '
let g:airline_symbols.dirty='⚡'

let g:haskell_enable_quantification = 1   " to enable highlighting of `forall`
let g:haskell_enable_recursivedo = 1      " to enable highlighting of `mdo` and `rec`
let g:haskell_enable_arrowsyntax = 1      " to enable highlighting of `proc`
let g:haskell_enable_pattern_synonyms = 1 " to enable highlighting of `pattern`
let g:haskell_enable_typeroles = 1        " to enable highlighting of type roles
let g:haskell_enable_static_pointers = 1  " to enable highlighting of `static`
let g:haskell_backpack = 1                " to enable highlighting of backpack keywords
