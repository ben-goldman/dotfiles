set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tpope/vim-surround'
Plugin 'ryanoasis/vim-devicons'
Plugin 'tiagofumo/vim-nerdtree-syntax-highlight'
Plugin 'jiangmiao/auto-pairs'
Plugin 'tpope/vim-abolish'
Plugin 'jalvesaq/Nvim-R'
Plugin 'mhinz/vim-startify'
Plugin 'lervag/vimtex'
Plugin 'vim-airline/vim-airline'
Plugin 'rhysd/vim-grammarous'
Plugin 'bfredl/nvim-ipy'
Plugin 'morhetz/gruvbox'
Plugin 'frazrepo/vim-rainbow'
Plugin 'vim-pandoc/vim-pandoc'
Plugin 'joshdick/onedark.vim'
Plugin 'rakr/vim-one'
Plugin 'preservim/nerdtree'
Plugin 'neoclide/coc.nvim'
Plugin 'ervandew/supertab'
Plugin 'dkarter/bullets.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
if (empty($TMUX))
  if (has("nvim"))
    "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
    set termguicolors
  endif
endif

let g:onedark_termcolors=256

set history=100

command! W execute 'w !sudo tee % > /dev/null' <bar> edit!
set termguicolors
set background=dark
colorscheme one
set wildmenu
set smartcase
set hlsearch
set incsearch
set lazyredraw
set magic
set showmatch
set mat=2
syntax enable
set encoding=utf8
map <Space> :
set ffs=unix,dos,mac
set undodir=~/.vim/.undo//
set backupdir=~/.vim/.backup//
set directory=~/.vim/.swp//
set smarttab
set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines
"let g:Tex_CompileRule_pdf='xelatex -interaction=nonstopmode $*'
"let g:tex_flavor='pdftex'
"let g:Tex_MultipleCompileFormats='pdf,bib,pdf,view'
autocmd FileType tex setlocal spell
autocmd FileType markdown setlocal spell
set mouse=a
set softtabstop=0 expandtab shiftwidth=2
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
set laststatus=2
set showtabline=2
set backspace=indent,eol,start
set encoding=UTF-8
set autowriteall
set t_te=


autocmd FileType markdown map t gj
autocmd FileType markdown map n gk

" dvorak remap
noremap h h
noremap t j
noremap n k
noremap s l
noremap l n
noremap L N
map T ttt
map N nnn

" easy access to beginning and end of line
noremap - $
noremap _ ^

noremap jsf <plug>(vimtex-cmd-toggle-frac)
noremap jsc <plug>(vimtex-cmd-toggle-star)
noremap jse <plug>(vimtex-cmd-toggle-frac)
noremap jse <plug>(vimtex-env-toggle-star)
noremap jsd <plug>(vimtex-delim-toggle-modifier)
noremap jsD <plug>(vimtex-delim-toggle-modifier-reverse)


tnoremap <Esc> <C-\><C-n>

let mapleader=";"
let maplocalleader=";"

map <F2> :w<CR>
nmap <F3> :set nu! <CR>

set clipboard=unnamed
set noshowmode
set showcmd

au FileType scheme call rainbow#load()

let g:pandoc#modules#enabled=["command"]

let g:vimtex_fold_enabled=1

function BG()
let hr = (strftime('%H'))
if hr >= 19
set background=dark
elseif hr >= 8
set background=light
elseif hr >= 0
set background=dark
endif
endfunction

"autocmd CursorHoldI,WinEnter,WinLeave,FocusLost,FocusGained,VimResized,ShellCmdPost,BufWrite * nested call BG()

let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='one'
let g:airline_powerline_fonts = 1
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
let g:airline#extensions#wordcount#filetypes = '\vasciidoc|help|mail|markdown|pandoc|org|rst|tex|text'
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

set guifont=SauceCodePro\ Nerd\ Font:h12
set linespace=0

nmap <F8> :GrammarousCheck<CR>
nmap <Leader>g <Plug>(grammarous-open-info-window)
nmap <Leader>i <Plug>(grammarous-move-to-info-window)

nnoremap <F12> :NERDTreeToggle<CR>

let g:nvim_ipy_perform_mappings = 0
map <silent> <F5> <Plug>(IPy-Run)
map <silent> <F6> <Plug>(IPy-RunCell)
let g:ipy_celldef = '^# %%'

inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
