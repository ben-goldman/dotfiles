set nocompatible
if has('termguicolors')
set termguicolors
endif
syntax enable
colorscheme onedark
set guifont=SauceCodePro\ Nerd\ Font:h12
set linespace=0

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
