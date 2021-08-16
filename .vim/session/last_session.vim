let SessionLoad = 1
if &cp | set nocp | endif
let s:cpo_save=&cpo
set cpo&vim
inoremap <D-BS> 
inoremap <M-BS> 
inoremap <M-Down> }
inoremap <D-Down> <C-End>
inoremap <M-Up> {
inoremap <D-Up> <C-Home>
noremap! <M-Right> <C-Right>
noremap! <D-Right> <End>
noremap! <M-Left> <C-Left>
noremap! <D-Left> <Home>
imap <C-J> <Plug>IMAP_JumpForward
inoremap <silent> <Plug>IMAP_JumpBack :call IMAP_Jumpfunc('b', 0)
inoremap <silent> <Plug>IMAP_JumpForward :call IMAP_Jumpfunc('', 0)
imap <S-Tab> <Plug>SuperTabBackward
inoremap <C-Tab> 	
inoremap <C-C> 
inoremap <silent> <SNR>43_AutoPairsReturn =AutoPairsReturn()
imap <C-G>S <Plug>ISurround
imap <C-G>s <Plug>Isurround
imap <C-S> <Plug>Isurround
noremap s :tabnext
noremap h :tabprevious
noremap n :bprevious
noremap t :bnext
nmap v <Plug>SlimeConfig
nmap  <Plug>SlimeParagraphSend
noremap s l
noremap n k
noremap t j
noremap h h
vmap <NL> <Plug>IMAP_JumpForward
nmap <NL> <Plug>IMAP_JumpForward
xnoremap <silent>  :call multiple_cursors#new("v", 0)
nnoremap <silent>  :call multiple_cursors#new("n", 1)
map   :
map ;n :NERDTreeToggle
nnoremap ;q :SlimeSend1 exit
nnoremap ;Q :IPythonCellRestart
nnoremap ;x :IPythonCellClose
nnoremap ;l :IPythonCellClear
map N nnn
xmap S <Plug>VSurround
map T ttt
nnoremap [c :IPythonCellPrevCell
map \n :NERDTreeToggle
nnoremap ]c :IPythonCellNextCell
nmap cr <Plug>(abolish-coerce-word)
nmap cS <Plug>CSurround
nmap cs <Plug>Csurround
nmap ds <Plug>Dsurround
vmap gx <Plug>NetrwBrowseXVis
nmap gx <Plug>NetrwBrowseX
xnoremap <silent> g<M-n> :call multiple_cursors#select_all("v", 0)
xnoremap <silent> gî :call multiple_cursors#select_all("v", 0)
nnoremap <silent> g<M-n> :call multiple_cursors#select_all("n", 0)
nnoremap <silent> gî :call multiple_cursors#select_all("n", 0)
xnoremap <silent> g<C-N> :call multiple_cursors#new("v", 0)
xnoremap <silent> g :call multiple_cursors#new("v", 0)
nnoremap <silent> g<C-N> :call multiple_cursors#new("n", 0)
nnoremap <silent> g :call multiple_cursors#new("n", 0)
xmap gS <Plug>VgSurround
noremap h h
noremap j t
noremap k n
noremap l s
noremap n gk
noremap s l
noremap t gj
nmap ySS <Plug>YSsurround
nmap ySs <Plug>YSsurround
nmap yss <Plug>Yssurround
nmap yS <Plug>YSurround
nmap ys <Plug>Ysurround
noremap <M-Down> }
noremap <D-Down> <C-End>
noremap <M-Up> {
noremap <D-Up> <C-Home>
noremap <M-Right> <C-Right>
noremap <D-Right> <End>
noremap <M-Left> <C-Left>
noremap <D-Left> <Home>
vnoremap <silent> <Plug>NetrwBrowseXVis :call netrw#BrowseXVis()
nnoremap <silent> <Plug>NetrwBrowseX :call netrw#BrowseX(netrw#GX(),netrw#CheckIfRemote(netrw#GX()))
vmap <C-J> <Plug>IMAP_JumpForward
nmap <C-J> <Plug>IMAP_JumpForward
vnoremap <silent> <Plug>IMAP_JumpBack `<:call IMAP_Jumpfunc('b', 0)
vnoremap <silent> <Plug>IMAP_JumpForward :call IMAP_Jumpfunc('', 0)
vnoremap <silent> <Plug>IMAP_DeleteAndJumpBack "_<Del>:call IMAP_Jumpfunc('b', 0)
vnoremap <silent> <Plug>IMAP_DeleteAndJumpForward "_<Del>:call IMAP_Jumpfunc('', 0)
nnoremap <silent> <Plug>IMAP_JumpBack :call IMAP_Jumpfunc('b', 0)
nnoremap <silent> <Plug>IMAP_JumpForward :call IMAP_Jumpfunc('', 0)
nnoremap <silent> <Plug>(startify-open-buffers) :call startify#open_buffers()
nmap <C-C>v <Plug>SlimeConfig
nmap <C-C><C-C> <Plug>SlimeParagraphSend
noremap <SNR>49_Operator :call slime#store_curpos():set opfunc=slime#send_opg@
nnoremap <silent> <Plug>GitGutterPreviewHunk :call gitgutter#utility#warn('please change your map <Plug>GitGutterPreviewHunk to <Plug>(GitGutterPreviewHunk)')
nnoremap <silent> <Plug>(GitGutterPreviewHunk) :GitGutterPreviewHunk
nnoremap <silent> <Plug>GitGutterUndoHunk :call gitgutter#utility#warn('please change your map <Plug>GitGutterUndoHunk to <Plug>(GitGutterUndoHunk)')
nnoremap <silent> <Plug>(GitGutterUndoHunk) :GitGutterUndoHunk
nnoremap <silent> <Plug>GitGutterStageHunk :call gitgutter#utility#warn('please change your map <Plug>GitGutterStageHunk to <Plug>(GitGutterStageHunk)')
nnoremap <silent> <Plug>(GitGutterStageHunk) :GitGutterStageHunk
xnoremap <silent> <Plug>GitGutterStageHunk :call gitgutter#utility#warn('please change your map <Plug>GitGutterStageHunk to <Plug>(GitGutterStageHunk)')
xnoremap <silent> <Plug>(GitGutterStageHunk) :GitGutterStageHunk
nnoremap <silent> <expr> <Plug>GitGutterPrevHunk &diff ? '[c' : ":\call gitgutter#utility#warn('please change your map \<Plug>GitGutterPrevHunk to \<Plug>(GitGutterPrevHunk)')\"
nnoremap <silent> <expr> <Plug>(GitGutterPrevHunk) &diff ? '[c' : ":\execute v:count1 . 'GitGutterPrevHunk'\"
nnoremap <silent> <expr> <Plug>GitGutterNextHunk &diff ? ']c' : ":\call gitgutter#utility#warn('please change your map \<Plug>GitGutterNextHunk to \<Plug>(GitGutterNextHunk)')\"
nnoremap <silent> <expr> <Plug>(GitGutterNextHunk) &diff ? ']c' : ":\execute v:count1 . 'GitGutterNextHunk'\"
xnoremap <silent> <Plug>(GitGutterTextObjectOuterVisual) :call gitgutter#hunk#text_object(0)
xnoremap <silent> <Plug>(GitGutterTextObjectInnerVisual) :call gitgutter#hunk#text_object(1)
onoremap <silent> <Plug>(GitGutterTextObjectOuterPending) :call gitgutter#hunk#text_object(0)
onoremap <silent> <Plug>(GitGutterTextObjectInnerPending) :call gitgutter#hunk#text_object(1)
xnoremap <silent> <M-n> :call multiple_cursors#select_all("v", 0)
nnoremap <silent> <M-n> :call multiple_cursors#select_all("n", 1)
xnoremap <silent> <C-N> :call multiple_cursors#new("v", 0)
nnoremap <silent> <C-N> :call multiple_cursors#new("n", 1)
nnoremap <silent> <Plug>SurroundRepeat .
xmap <F8> <Plug>SlimeRegionSend
nmap <F8> <Plug>SlimeLineSend
nnoremap <F7> :IPythonCellExecuteCellJump
nnoremap <F6> :IPythonCellExecuteCell
nnoremap <F5> :IPythonCellRun
nnoremap <F4> :SlimeSend1 ipython --matplotlib=auto 
nmap <F3> :set nu! 
map <F2> :w
noremap <C-A>s :tabnext
noremap <C-A>h :tabprevious
noremap <C-A>n :bprevious
noremap <C-A>t :bnext
noremap <C-H>s l
noremap <C-H>n k
noremap <C-H>t j
noremap <C-H>h h
nnoremap <F10> :!pandoc -o %:r.pdf -V geometry:margin=1in %
inoremap  
imap S <Plug>ISurround
imap s <Plug>Isurround
imap 	 <Plug>SuperTabForward
imap <NL> <Plug>IMAP_JumpForward
imap  <Plug>Isurround
xnoremap <silent> î :call multiple_cursors#select_all("v", 0)
nnoremap <silent> î :call multiple_cursors#select_all("n", 1)
inoremap uh 
let &cpo=s:cpo_save
unlet s:cpo_save
set autoindent
set autowriteall
set background=dark
set backspace=indent,eol,start
set backupdir=~/.vim/.backup//
set clipboard=unnamed
set completeopt=menuone,longest,preview
set directory=~/.vim/.swp//
set fileencodings=ucs-bom,utf-8,default,latin1
set fileformats=unix,dos,mac
set guifont=Source\ Code\ Pro\ for\ Powerline:h11
set guitablabel=%M%t
set helplang=en
set history=500
set hlsearch
set incsearch
set langmenu=none
set laststatus=2
set lazyredraw
set matchtime=2
set mouse=a
set printexpr=system('open\ -a\ Preview\ '.v:fname_in)\ +\ v:shell_error
set runtimepath=
set runtimepath+=~/.vim
set runtimepath+=~/.vim/bundle/Vundle.vim
set runtimepath+=~/.vim/bundle/vim-fugitive
set runtimepath+=~/.vim/bundle/vim-airline-themes
set runtimepath+=~/.vim/bundle/nerdtree
set runtimepath+=~/.vim/bundle/vim-colors-solarized
set runtimepath+=~/.vim/bundle/vim-surround
set runtimepath+=~/.vim/bundle/vim-ipython
set runtimepath+=~/.vim/bundle/vim-flake8
set runtimepath+=~/.vim/bundle/vim-devicons
set runtimepath+=~/.vim/bundle/vim-nerdtree-syntax-highlight
set runtimepath+=~/.vim/bundle/auto-pairs
set runtimepath+=~/.vim/bundle/vim-tmux-navigator
set runtimepath+=~/.vim/bundle/vim-multiple-cursors
set runtimepath+=~/.vim/bundle/vim-gitgutter
set runtimepath+=~/.vim/bundle/vim-slime
set runtimepath+=~/.vim/bundle/vim-ipython-cell
set runtimepath+=~/.vim/bundle/jedi-vim
set runtimepath+=~/.vim/bundle/supertab
set runtimepath+=~/.vim/bundle/vim-abolish
set runtimepath+=~/.vim/bundle/Nvim-R
set runtimepath+=~/.vim/bundle/vim-startify
set runtimepath+=~/.vim/bundle/vim-markdown-preview
set runtimepath+=~/.vim/bundle/vim-latex
set runtimepath+=/usr/local/Cellar/macvim/8.2-165_1/MacVim.app/Contents/Resources/vim/vimfiles
set runtimepath+=/usr/local/Cellar/macvim/8.2-165_1/MacVim.app/Contents/Resources/vim/runtime
set runtimepath+=/usr/local/Cellar/macvim/8.2-165_1/MacVim.app/Contents/Resources/vim/vimfiles/after
set runtimepath+=~/.vim/after
set runtimepath+=~/.vim/bundle/Vundle.vim
set runtimepath+=/opt/anaconda3/pkgs/powerline-status-2.7-py37h9bfed18_1001/lib/python3.7/site-packages/powerline/bindings/vim
set runtimepath+=~/.vim/bundle/Vundle.vim/after
set runtimepath+=~/.vim/bundle/vim-fugitive/after
set runtimepath+=~/.vim/bundle/vim-airline-themes/after
set runtimepath+=~/.vim/bundle/nerdtree/after
set runtimepath+=~/.vim/bundle/vim-colors-solarized/after
set runtimepath+=~/.vim/bundle/vim-surround/after
set runtimepath+=~/.vim/bundle/vim-ipython/after
set runtimepath+=~/.vim/bundle/vim-flake8/after
set runtimepath+=~/.vim/bundle/vim-devicons/after
set runtimepath+=~/.vim/bundle/vim-nerdtree-syntax-highlight/after
set runtimepath+=~/.vim/bundle/auto-pairs/after
set runtimepath+=~/.vim/bundle/vim-tmux-navigator/after
set runtimepath+=~/.vim/bundle/vim-multiple-cursors/after
set runtimepath+=~/.vim/bundle/vim-gitgutter/after
set runtimepath+=~/.vim/bundle/vim-slime/after
set runtimepath+=~/.vim/bundle/vim-ipython-cell/after
set runtimepath+=~/.vim/bundle/jedi-vim/after
set runtimepath+=~/.vim/bundle/supertab/after
set runtimepath+=~/.vim/bundle/vim-abolish/after
set runtimepath+=~/.vim/bundle/Nvim-R/after
set runtimepath+=~/.vim/bundle/vim-startify/after
set runtimepath+=~/.vim/bundle/vim-markdown-preview/after
set runtimepath+=~/.vim/bundle/vim-latex/after
set showcmd
set showmatch
set noshowmode
set showtabline=2
set smartcase
set smartindent
set smarttab
set statusline=%!py3eval('powerline.new_window()')
set tabline=%!py3eval('powerline.tabline()')
set termencoding=utf-8
set undodir=~/.vim/.undo//
set wildmenu
set window=49
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
argglobal
%argdel
edit ~/.vimrc
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
argglobal
let s:cpo_save=&cpo
set cpo&vim
inoremap <buffer> <silent> <M-n> :call AutoPairsJump()a
inoremap <buffer> <silent> <expr> <M-p> AutoPairsToggle()
inoremap <buffer> <silent> <M-b> =AutoPairsBackInsert()
inoremap <buffer> <silent> <M-e> =AutoPairsFastWrap()
inoremap <buffer> <silent> <C-H> =AutoPairsDelete()
inoremap <buffer> <silent> <BS> =AutoPairsDelete()
inoremap <buffer> <silent> <M-'> =AutoPairsMoveCharacter('''')
inoremap <buffer> <silent> <M-"> =AutoPairsMoveCharacter('"')
inoremap <buffer> <silent> <M-}> =AutoPairsMoveCharacter('}')
inoremap <buffer> <silent> <M-{> =AutoPairsMoveCharacter('{')
inoremap <buffer> <silent> <M-]> =AutoPairsMoveCharacter(']')
inoremap <buffer> <silent> <M-[> =AutoPairsMoveCharacter('[')
inoremap <buffer> <silent> <M-)> =AutoPairsMoveCharacter(')')
inoremap <buffer> <silent> <M-(> =AutoPairsMoveCharacter('(')
nmap <buffer> ;hp <Plug>(GitGutterPreviewHunk)
nmap <buffer> ;hu <Plug>(GitGutterUndoHunk)
nmap <buffer> ;hs <Plug>(GitGutterStageHunk)
xmap <buffer> ;hs <Plug>(GitGutterStageHunk)
inoremap <buffer> <silent> § =AutoPairsMoveCharacter('''')
inoremap <buffer> <silent> ¢ =AutoPairsMoveCharacter('"')
inoremap <buffer> <silent> © =AutoPairsMoveCharacter(')')
inoremap <buffer> <silent> ¨ =AutoPairsMoveCharacter('(')
inoremap <buffer> <silent> î :call AutoPairsJump()a
inoremap <buffer> <silent> <expr> ð AutoPairsToggle()
inoremap <buffer> <silent> â =AutoPairsBackInsert()
inoremap <buffer> <silent> å =AutoPairsFastWrap()
inoremap <buffer> <silent> ý =AutoPairsMoveCharacter('}')
inoremap <buffer> <silent> û =AutoPairsMoveCharacter('{')
inoremap <buffer> <silent> Ý =AutoPairsMoveCharacter(']')
inoremap <buffer> <silent> Û =AutoPairsMoveCharacter('[')
vnoremap <buffer> <silent> [" :exe "normal! gv"|call search('\%(^\s*".*\n\)\%(^\s*"\)\@!', "bW")
nnoremap <buffer> <silent> [" :call search('\%(^\s*".*\n\)\%(^\s*"\)\@!', "bW")
vnoremap <buffer> <silent> [] m':exe "normal! gv"|call search('^\s*end\(f\%[unction]\|def\)\>', "bW")
nnoremap <buffer> <silent> [] m':call search('^\s*end\(f\%[unction]\|def\)\>', "bW")
vnoremap <buffer> <silent> [[ m':exe "normal! gv"|call search('^\s*\(fu\%[nction]\|def\)\>', "bW")
nnoremap <buffer> <silent> [[ m':call search('^\s*\(fu\%[nction]\|def\)\>', "bW")
vnoremap <buffer> <silent> ]" :exe "normal! gv"|call search('^\(\s*".*\n\)\@<!\(\s*"\)', "W")
nnoremap <buffer> <silent> ]" :call search('^\(\s*".*\n\)\@<!\(\s*"\)', "W")
vnoremap <buffer> <silent> ][ m':exe "normal! gv"|call search('^\s*end\(f\%[unction]\|def\)\>', "W")
nnoremap <buffer> <silent> ][ m':call search('^\s*end\(f\%[unction]\|def\)\>', "W")
vnoremap <buffer> <silent> ]] m':exe "normal! gv"|call search('^\s*\(fu\%[nction]\|def\)\>', "W")
nnoremap <buffer> <silent> ]] m':call search('^\s*\(fu\%[nction]\|def\)\>', "W")
xmap <buffer> ac <Plug>(GitGutterTextObjectOuterVisual)
omap <buffer> ac <Plug>(GitGutterTextObjectOuterPending)
xmap <buffer> ic <Plug>(GitGutterTextObjectInnerVisual)
omap <buffer> ic <Plug>(GitGutterTextObjectInnerPending)
noremap <buffer> <silent> <M-n> :call AutoPairsJump()
noremap <buffer> <silent> <M-p> :call AutoPairsToggle()
inoremap <buffer> <silent>  =AutoPairsDelete()
inoremap <buffer> <silent>   =AutoPairsSpace()
inoremap <buffer> <silent> " =AutoPairsInsert('"')
inoremap <buffer> <silent> ' =AutoPairsInsert('''')
inoremap <buffer> <silent> ( =AutoPairsInsert('(')
inoremap <buffer> <silent> ) =AutoPairsInsert(')')
noremap <buffer> <silent> î :call AutoPairsJump()
noremap <buffer> <silent> ð :call AutoPairsToggle()
inoremap <buffer> <silent> [ =AutoPairsInsert('[')
inoremap <buffer> <silent> ] =AutoPairsInsert(']')
inoremap <buffer> <silent> ` =AutoPairsInsert('`')
inoremap <buffer> <silent> { =AutoPairsInsert('{')
inoremap <buffer> <silent> } =AutoPairsInsert('}')
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal backupcopy=
setlocal balloonexpr=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),0],:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=sO:\"\ -,mO:\"\ \ ,sO:#\ -,mO:#\ \ ,eO:##,:\",:#
setlocal commentstring=\"%s
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal cursorlineopt=both
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal noexpandtab
if &filetype != 'vim'
setlocal filetype=vim
endif
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=tcq
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal formatprg=
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=-1
setlocal include=
setlocal includeexpr=
setlocal indentexpr=GetVimIndent()
setlocal indentkeys=0{,0},0),0],:,!^F,o,O,e,=end,=},=else,=cat,=fina,=END,0\\,0=\"\\\ 
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=:help
setlocal nolinebreak
setlocal nolisp
setlocal lispwords=
setlocal nolist
setlocal nomacmeta
setlocal makeencoding=
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=bin,octal,hex
setlocal nonumber
setlocal numberwidth=4
setlocal omnifunc=
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal scrolloff=-1
setlocal shiftwidth=8
setlocal noshortname
setlocal showbreak=
setlocal sidescrolloff=-1
setlocal signcolumn=auto
setlocal smartindent
setlocal softtabstop=0
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal spelloptions=
setlocal statusline=%!py3eval('powerline.statusline(1)')
setlocal suffixesadd=
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'vim'
setlocal syntax=vim
endif
setlocal tabstop=8
setlocal tagcase=
setlocal tagfunc=
setlocal tags=
setlocal termwinkey=
setlocal termwinscroll=10000
setlocal termwinsize=
setlocal textwidth=78
setlocal thesaurus=
setlocal noundofile
setlocal undolevels=-123456
setlocal varsofttabstop=
setlocal vartabstop=
setlocal wincolor=
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 32 - ((25 * winheight(0) + 24) / 48)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
32
normal! 0
tabnext 1
badd +1 OneDrive\ -\ White\ Plains\ Public\ Schools/G11/English/Summer\ Assignment/SummerAssignment.md
badd +32 ~/.vimrc
if exists('s:wipebuf') && len(win_findbuf(s:wipebuf)) == 0
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToOS
set winminheight=1 winminwidth=1
let s:sx = expand("<sfile>:p:r")."x.vim"
if filereadable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
