let SessionLoad = 1
if &cp | set nocp | endif
let s:cpo_save=&cpo
set cpo&vim
inoremap <silent> <Nul> =UltiSnips#ExpandSnippet()
inoremap <silent> <C-Tab> =UltiSnips#ListSnippets()
inoremap <Plug>(emmet-expand-abbr) =emmet#util#closePopup()=emmet#expandAbbr(0,"")
inoremap <Plug>(emmet-expand-word) =emmet#util#closePopup()=emmet#expandAbbr(1,"")
inoremap <Plug>(emmet-update-tag) =emmet#util#closePopup()=emmet#updateTag()
inoremap <Plug>(emmet-balance-tag-inward) :call emmet#balanceTag(1)
inoremap <Plug>(emmet-balance-tag-outword) :call emmet#balanceTag(-1)
inoremap <Plug>(emmet-move-next) :call emmet#moveNextPrev(0)
inoremap <Plug>(emmet-move-prev) :call emmet#moveNextPrev(1)
inoremap <Plug>(emmet-move-next-item) :call emmet#moveNextPrevItem(0)
inoremap <Plug>(emmet-move-prev-item) :call emmet#moveNextPrevItem(1)
inoremap <Plug>(emmet-image-size) =emmet#util#closePopup()=emmet#imageSize()
inoremap <Plug>(emmet-toggle-comment) =emmet#util#closePopup()=emmet#toggleComment()
inoremap <Plug>(emmet-split-join-tag) :call emmet#splitJoinTag()
inoremap <Plug>(emmet-remove-tag) =emmet#util#closePopup()=emmet#removeTag()
inoremap <Plug>(emmet-anchorize-url) =emmet#util#closePopup()=emmet#anchorizeURL(0)
inoremap <Plug>(emmet-anchorize-summary) =emmet#util#closePopup()=emmet#anchorizeURL(1)
inoremap <silent> <Plug>(table-mode-tableize) |:call tablemode#TableizeInsertMode()a
inoremap <silent> <Plug>NERDCommenterInsert  <BS>:call NERDComment('i', "insert")
nmap e <Plug>(emmet-expand-abbr)
vmap e <Plug>(emmet-expand-abbr)
nmap ; <Plug>(emmet-expand-word)
nmap u <Plug>(emmet-update-tag)
nmap d <Plug>(emmet-balance-tag-inward)
vmap d <Plug>(emmet-balance-tag-inward)
nmap D <Plug>(emmet-balance-tag-outword)
vmap D <Plug>(emmet-balance-tag-outword)
nmap n <Plug>(emmet-move-next)
nmap N <Plug>(emmet-move-prev)
nmap i <Plug>(emmet-image-size)
nmap / <Plug>(emmet-toggle-comment)
nmap j <Plug>(emmet-split-join-tag)
nmap k <Plug>(emmet-remove-tag)
nmap a <Plug>(emmet-anchorize-url)
nmap A <Plug>(emmet-anchorize-summary)
vmap m <Plug>(emmet-merge-lines)
vmap c <Plug>(emmet-code-pretty)
noremap  2
xnoremap  :cp
nnoremap  :cp
snoremap <silent>  c
onoremap  :cp
noremap <NL> :bp
noremap  :bn
noremap  :cn
nnoremap <silent>  :CtrlP
noremap  2
snoremap  "_c
nnoremap  l $
nmap  ? <Plug>MarkSearchAnyPrev
nmap  / <Plug>MarkSearchAnyNext
nmap  # <Plug>MarkSearchCurrentPrev
nmap  * <Plug>MarkSearchCurrentNext
xmap  T <Plug>(table-mode-tableize-delimiter)
xmap  tt <Plug>(table-mode-tableize)
nmap  tt <Plug>(table-mode-tableize)
nnoremap <silent>  tm :call tablemode#Toggle()
map  rwp <Plug>RestoreWinPosn
map  swp <Plug>SaveWinPosn
nnoremap <silent>  w :Bclose
nmap  ca <Plug>NERDCommenterAltDelims
xmap  cu <Plug>NERDCommenterUncomment
nmap  cu <Plug>NERDCommenterUncomment
xmap  cb <Plug>NERDCommenterAlignBoth
nmap  cb <Plug>NERDCommenterAlignBoth
xmap  cl <Plug>NERDCommenterAlignLeft
nmap  cl <Plug>NERDCommenterAlignLeft
nmap  cA <Plug>NERDCommenterAppend
xmap  cy <Plug>NERDCommenterYank
nmap  cy <Plug>NERDCommenterYank
xmap  cs <Plug>NERDCommenterSexy
nmap  cs <Plug>NERDCommenterSexy
xmap  ci <Plug>NERDCommenterInvert
nmap  ci <Plug>NERDCommenterInvert
nmap  c$ <Plug>NERDCommenterToEOL
xmap  cn <Plug>NERDCommenterNested
nmap  cn <Plug>NERDCommenterNested
xmap  cm <Plug>NERDCommenterMinimal
nmap  cm <Plug>NERDCommenterMinimal
xmap  c  <Plug>NERDCommenterToggle
nmap  c  <Plug>NERDCommenterToggle
xmap  cc <Plug>NERDCommenterComment
nmap  cc <Plug>NERDCommenterComment
vmap   r <Plug>MarkRegex
nmap   r <Plug>MarkRegex
nmap   n <Plug>MarkClear
vmap   m <Plug>MarkSet
nmap   m <Plug>MarkSet
map  n :NERDTreeToggle
nnoremap  EE :qa!
nnoremap  ee :qa
nnoremap  E :q!
nnoremap  e :q
nnoremap  QQ :bd!
nnoremap  Q :Bclose!
nnoremap  qq :bd
nnoremap  q :Bclose
nnoremap  W :set wrap!
nnoremap  r my:e!`y
noremap  p :CtrlP
noremap  S :w!
noremap  s :w
noremap  m :only
noremap  g `
noremap  y "+y
nnoremap  L <Right>
nnoremap  K <Up>
nnoremap  J <Down>
nnoremap  H <Left>
vnoremap  l $<Left>
onoremap  l $
noremap  h ^
noremap  cw 1z=
vnoremap  f zf
nnoremap  f za
noremap    .
noremap  | :split
noremap  \ :vsplit
nmap # <Plug>MarkSearchPrev
nmap * <Plug>MarkSearchNext
noremap + :cw
noremap - :ccl
noremap == mygg=G`y
noremap CA mygg"+yG`y
cnoremap çç 
cnoremap Ç 
noremap JJ ik$
noremap Q <Nop>
xmap S <Plug>VSurround
noremap VV ^v$h
noremap Y y$
nmap cS <Plug>CSurround
nmap cs <Plug>Csurround
nmap ds <Plug>Dsurround
vmap gx <Plug>NetrwBrowseXVis
nmap gx <Plug>NetrwBrowseX
xmap gS <Plug>VgSurround
noremap j gj
noremap k gk
vnoremap s :s/
vnoremap v 
nmap ySS <Plug>YSsurround
nmap ySs <Plug>YSsurround
nmap yss <Plug>Yssurround
nmap yS <Plug>YSurround
nmap ys <Plug>Ysurround
vnoremap ~ y:call setreg('', TwiddleCase(@"), getregtype(''))gv""Pgvl
nnoremap ~ g~
nnoremap <SNR>17_: :=v:count ? v:count : ''
snoremap <silent> <Nul> :call UltiSnips#ExpandSnippet()
xnoremap <silent> <Nul> :call UltiSnips#SaveLastVisualSelection()gvs
snoremap <silent> <C-Tab> :call UltiSnips#ListSnippets()
snoremap <silent> <BS> c
snoremap <silent> <Del> c
nnoremap <Plug>(emmet-expand-abbr) :call emmet#expandAbbr(3,"")
vnoremap <Plug>(emmet-expand-abbr) :call emmet#expandAbbr(2,"")
nnoremap <Plug>(emmet-expand-word) :call emmet#expandAbbr(1,"")
nnoremap <Plug>(emmet-update-tag) :call emmet#updateTag()
nnoremap <Plug>(emmet-balance-tag-inward) :call emmet#balanceTag(1)
vnoremap <Plug>(emmet-balance-tag-inward) :call emmet#balanceTag(2)
nnoremap <Plug>(emmet-balance-tag-outword) :call emmet#balanceTag(-1)
vnoremap <Plug>(emmet-balance-tag-outword) :call emmet#balanceTag(-2)
nnoremap <Plug>(emmet-move-next) :call emmet#moveNextPrev(0)
nnoremap <Plug>(emmet-move-prev) :call emmet#moveNextPrev(1)
nnoremap <Plug>(emmet-move-next-item) :call emmet#moveNextPrevItem(0)
nnoremap <Plug>(emmet-move-prev-item) :call emmet#moveNextPrevItem(1)
nnoremap <Plug>(emmet-image-size) :call emmet#imageSize()
nnoremap <Plug>(emmet-toggle-comment) :call emmet#toggleComment()
nnoremap <Plug>(emmet-split-join-tag) :call emmet#splitJoinTag()
nnoremap <Plug>(emmet-remove-tag) :call emmet#removeTag()
nnoremap <Plug>(emmet-anchorize-url) :call emmet#anchorizeURL(0)
nnoremap <Plug>(emmet-anchorize-summary) :call emmet#anchorizeURL(1)
vnoremap <Plug>(emmet-merge-lines) :call emmet#mergeLines()
vnoremap <Plug>(emmet-code-pretty) :call emmet#codePretty()
vnoremap <silent> <Plug>NetrwBrowseXVis :call netrw#BrowseXVis()
nnoremap <silent> <Plug>NetrwBrowseX :call netrw#BrowseX(expand((exists("g:netrw_gx")? g:netrw_gx : '<cfile>')),netrw#CheckIfRemote())
nmap <C-k9> <Plug>MarkSearchGroup9Prev
nnoremap <silent> <Plug>MarkSearchGroup9Prev :call mark#SearchGroupMark(9, v:count1, 1, 1)
nmap <k9> <Plug>MarkSearchGroup9Next
nnoremap <silent> <Plug>MarkSearchGroup9Next :call mark#SearchGroupMark(9, v:count1, 0, 1)
nmap <C-k8> <Plug>MarkSearchGroup8Prev
nnoremap <silent> <Plug>MarkSearchGroup8Prev :call mark#SearchGroupMark(8, v:count1, 1, 1)
nmap <k8> <Plug>MarkSearchGroup8Next
nnoremap <silent> <Plug>MarkSearchGroup8Next :call mark#SearchGroupMark(8, v:count1, 0, 1)
nmap <C-k7> <Plug>MarkSearchGroup7Prev
nnoremap <silent> <Plug>MarkSearchGroup7Prev :call mark#SearchGroupMark(7, v:count1, 1, 1)
nmap <k7> <Plug>MarkSearchGroup7Next
nnoremap <silent> <Plug>MarkSearchGroup7Next :call mark#SearchGroupMark(7, v:count1, 0, 1)
nmap <C-k6> <Plug>MarkSearchGroup6Prev
nnoremap <silent> <Plug>MarkSearchGroup6Prev :call mark#SearchGroupMark(6, v:count1, 1, 1)
nmap <k6> <Plug>MarkSearchGroup6Next
nnoremap <silent> <Plug>MarkSearchGroup6Next :call mark#SearchGroupMark(6, v:count1, 0, 1)
nmap <C-k5> <Plug>MarkSearchGroup5Prev
nnoremap <silent> <Plug>MarkSearchGroup5Prev :call mark#SearchGroupMark(5, v:count1, 1, 1)
nmap <k5> <Plug>MarkSearchGroup5Next
nnoremap <silent> <Plug>MarkSearchGroup5Next :call mark#SearchGroupMark(5, v:count1, 0, 1)
nmap <C-k4> <Plug>MarkSearchGroup4Prev
nnoremap <silent> <Plug>MarkSearchGroup4Prev :call mark#SearchGroupMark(4, v:count1, 1, 1)
nmap <k4> <Plug>MarkSearchGroup4Next
nnoremap <silent> <Plug>MarkSearchGroup4Next :call mark#SearchGroupMark(4, v:count1, 0, 1)
nmap <C-k3> <Plug>MarkSearchGroup3Prev
nnoremap <silent> <Plug>MarkSearchGroup3Prev :call mark#SearchGroupMark(3, v:count1, 1, 1)
nmap <k3> <Plug>MarkSearchGroup3Next
nnoremap <silent> <Plug>MarkSearchGroup3Next :call mark#SearchGroupMark(3, v:count1, 0, 1)
nmap <C-k2> <Plug>MarkSearchGroup2Prev
nnoremap <silent> <Plug>MarkSearchGroup2Prev :call mark#SearchGroupMark(2, v:count1, 1, 1)
nmap <k2> <Plug>MarkSearchGroup2Next
nnoremap <silent> <Plug>MarkSearchGroup2Next :call mark#SearchGroupMark(2, v:count1, 0, 1)
nmap <C-k1> <Plug>MarkSearchGroup1Prev
nnoremap <silent> <Plug>MarkSearchGroup1Prev :call mark#SearchGroupMark(1, v:count1, 1, 1)
nmap <k1> <Plug>MarkSearchGroup1Next
nnoremap <silent> <Plug>MarkSearchGroup1Next :call mark#SearchGroupMark(1, v:count1, 0, 1)
nnoremap <silent> <Plug>MarkSearchGroupPrev :call mark#SearchGroupMark(v:count, 1, 1, 1)
nnoremap <silent> <Plug>MarkSearchGroupNext :call mark#SearchGroupMark(v:count, 1, 0, 1)
nnoremap <silent> <Plug>MarkSearchOrAnyPrev :if !mark#SearchNext(1,'mark#SearchAnyMark')|execute 'normal! #zv'|endif
nnoremap <silent> <Plug>MarkSearchOrAnyNext :if !mark#SearchNext(0,'mark#SearchAnyMark')|execute 'normal! *zv'|endif
nnoremap <silent> <Plug>MarkSearchOrCurPrev :if !mark#SearchNext(1,'mark#SearchCurrentMark')|execute 'normal! #zv'|endif
nnoremap <silent> <Plug>MarkSearchOrCurNext :if !mark#SearchNext(0,'mark#SearchCurrentMark')|execute 'normal! *zv'|endif
nnoremap <silent> <Plug>MarkSearchPrev :if !mark#SearchNext(1)|execute 'normal! #zv'|endif
nnoremap <silent> <Plug>MarkSearchNext :if !mark#SearchNext(0)|execute 'normal! *zv'|endif
nnoremap <silent> <Plug>MarkSearchAnyPrev :call mark#SearchAnyMark(1)
nnoremap <silent> <Plug>MarkSearchAnyNext :call mark#SearchAnyMark(0)
nnoremap <silent> <Plug>MarkSearchCurrentPrev :call mark#SearchCurrentMark(1)
nnoremap <silent> <Plug>MarkSearchCurrentNext :call mark#SearchCurrentMark(0)
nnoremap <silent> <Plug>MarkToggle :call mark#Toggle()
nnoremap <silent> <Plug>MarkConfirmAllClear :if confirm('Really delete all marks? This cannot be undone.', "&Yes\n&No") == 1|call mark#ClearAll()|endif
nnoremap <silent> <Plug>MarkAllClear :call mark#ClearAll()
nnoremap <silent> <Plug>MarkClear :if !mark#DoMark(v:count, (v:count ? '' : mark#CurrentMark()[0]))[0]|execute "normal! \<C-\>\<C-n>\<Esc>"|endif
vnoremap <silent> <Plug>MarkRegex :if !mark#MarkRegex(v:count, mark#GetVisualSelectionAsRegexp())|execute "normal! \<C-\>\<C-n>\<Esc>"|if ! empty(v:errmsg)|echoerr v:errmsg|endif|endif
nnoremap <silent> <Plug>MarkRegex :if !mark#MarkRegex(v:count, '')|execute "normal! \<C-\>\<C-n>\<Esc>"|if ! empty(v:errmsg)|echoerr v:errmsg|endif|endif
vnoremap <silent> <Plug>MarkIWhiteSet :if !mark#DoMark(v:count, mark#GetVisualSelectionAsLiteralWhitespaceIndifferentPattern())[0]|execute "normal! \<C-\>\<C-n>\<Esc>"|endif
vnoremap <silent> <Plug>MarkSet :if !mark#DoMark(v:count, mark#GetVisualSelectionAsLiteralPattern())[0]|execute "normal! \<C-\>\<C-n>\<Esc>"|endif
nnoremap <silent> <Plug>MarkSet :if !mark#MarkCurrentWord(v:count)|execute "normal! \<C-\>\<C-n>\<Esc>"|endif
nnoremap <silent> <Plug>(table-mode-sort) :call tablemode#spreadsheet#Sort('')
nnoremap <silent> <Plug>(table-mode-eval-formula) :call tablemode#spreadsheet#formula#EvaluateFormulaLine()
nnoremap <silent> <Plug>(table-mode-add-formula) :call tablemode#spreadsheet#formula#Add()
nnoremap <silent> <Plug>(table-mode-delete-column) :call tablemode#spreadsheet#DeleteColumn()
nnoremap <silent> <Plug>(table-mode-delete-row) :call tablemode#spreadsheet#DeleteRow()
xnoremap <silent> <Plug>(table-mode-cell-text-object-i) :call tablemode#spreadsheet#cell#TextObject(1)
xnoremap <silent> <Plug>(table-mode-cell-text-object-a) :call tablemode#spreadsheet#cell#TextObject(0)
onoremap <silent> <Plug>(table-mode-cell-text-object-i) :call tablemode#spreadsheet#cell#TextObject(1)
onoremap <silent> <Plug>(table-mode-cell-text-object-a) :call tablemode#spreadsheet#cell#TextObject(0)
nnoremap <silent> <Plug>(table-mode-motion-right) :call tablemode#spreadsheet#cell#Motion('l')
nnoremap <silent> <Plug>(table-mode-motion-left) :call tablemode#spreadsheet#cell#Motion('h')
nnoremap <silent> <Plug>(table-mode-motion-down) :call tablemode#spreadsheet#cell#Motion('j')
nnoremap <silent> <Plug>(table-mode-motion-up) :call tablemode#spreadsheet#cell#Motion('k')
nnoremap <silent> <Plug>(table-mode-realign) :call tablemode#table#Realign('.')
xnoremap <silent> <Plug>(table-mode-tableize-delimiter) :call tablemode#TableizeByDelimiter()
xnoremap <silent> <Plug>(table-mode-tableize) :Tableize
nnoremap <silent> <Plug>(table-mode-tableize) :Tableize
nmap <silent> <Plug>RestoreWinPosn :call RestoreWinPosn()
nmap <silent> <Plug>SaveWinPosn :call SaveWinPosn()
nnoremap <silent> <Plug>SurroundRepeat .
xnoremap <silent> <Plug>NERDCommenterUncomment :call NERDComment("x", "Uncomment")
nnoremap <silent> <Plug>NERDCommenterUncomment :call NERDComment("n", "Uncomment")
xnoremap <silent> <Plug>NERDCommenterAlignBoth :call NERDComment("x", "AlignBoth")
nnoremap <silent> <Plug>NERDCommenterAlignBoth :call NERDComment("n", "AlignBoth")
xnoremap <silent> <Plug>NERDCommenterAlignLeft :call NERDComment("x", "AlignLeft")
nnoremap <silent> <Plug>NERDCommenterAlignLeft :call NERDComment("n", "AlignLeft")
nnoremap <silent> <Plug>NERDCommenterAppend :call NERDComment("n", "Append")
xnoremap <silent> <Plug>NERDCommenterYank :call NERDComment("x", "Yank")
nnoremap <silent> <Plug>NERDCommenterYank :call NERDComment("n", "Yank")
xnoremap <silent> <Plug>NERDCommenterSexy :call NERDComment("x", "Sexy")
nnoremap <silent> <Plug>NERDCommenterSexy :call NERDComment("n", "Sexy")
xnoremap <silent> <Plug>NERDCommenterInvert :call NERDComment("x", "Invert")
nnoremap <silent> <Plug>NERDCommenterInvert :call NERDComment("n", "Invert")
nnoremap <silent> <Plug>NERDCommenterToEOL :call NERDComment("n", "ToEOL")
xnoremap <silent> <Plug>NERDCommenterNested :call NERDComment("x", "Nested")
nnoremap <silent> <Plug>NERDCommenterNested :call NERDComment("n", "Nested")
xnoremap <silent> <Plug>NERDCommenterMinimal :call NERDComment("x", "Minimal")
nnoremap <silent> <Plug>NERDCommenterMinimal :call NERDComment("n", "Minimal")
xnoremap <silent> <Plug>NERDCommenterToggle :call NERDComment("x", "Toggle")
nnoremap <silent> <Plug>NERDCommenterToggle :call NERDComment("n", "Toggle")
xnoremap <silent> <Plug>NERDCommenterComment :call NERDComment("x", "Comment")
nnoremap <silent> <Plug>NERDCommenterComment :call NERDComment("n", "Comment")
nnoremap <SNR>16_: :=v:count ? v:count : ''
noremap <F8> :so $MYVIMRC
map <S-F12> :bd ~/.vimrc:bd ~/.plugins.vim
map <F12> :tabe ~/.plugins.vim:vsplit $MYVIMRC
nnoremap <BS> i<BS><Right>
noremap <F10> :UltiSnipsEdit
noremap <F4> :b#
noremap <F3> :tabNext
noremap <F2> :tabprevious
noremap <S-F9> :bd Makefile
noremap <F9> :e Makefile
noremap <C-F5> :wa:make %:r:cw
noremap <S-F5> :wa:make 
noremap <F5> :wa:make:cw
nnoremap <Right> >
nnoremap <Left> <
nnoremap <Down> -
nnoremap <Up> +
imap e <Plug>(emmet-expand-abbr)
imap ; <Plug>(emmet-expand-word)
imap u <Plug>(emmet-update-tag)
imap d <Plug>(emmet-balance-tag-inward)
imap D <Plug>(emmet-balance-tag-outword)
imap n <Plug>(emmet-move-next)
imap N <Plug>(emmet-move-prev)
imap i <Plug>(emmet-image-size)
imap / <Plug>(emmet-toggle-comment)
imap j <Plug>(emmet-split-join-tag)
imap k <Plug>(emmet-remove-tag)
imap a <Plug>(emmet-anchorize-url)
imap A <Plug>(emmet-anchorize-summary)
imap S <Plug>ISurround
imap s <Plug>Isurround
imap  <Plug>Isurround
inoremap <expr> [200~ XTermPasteBegin()
inoremap "" ""
inoremap " "
inoremap '' ''
inoremap ((( (((
inoremap (( ((
inoremap , ,
inoremap -- --
inoremap :: ::
inoremap : :
inoremap <+ <?= ?><Left><Left><Left>
inoremap <<  />
inoremap <! <!----><Left><Left><Left>
inoremap < <
inoremap <? <?
inoremap >>> >>>
inoremap >> >>
nnoremap Ç :
inoremap [ [
inoremap [[ [[
inoremap \\ \\
inoremap __ __
cnoremap jk 
inoremap jk 
inoremap {{{ {{{
inoremap {{ {{
abbr sptbr set spelllang=pt_br
let &cpo=s:cpo_save
unlet s:cpo_save
set autoindent
set autoread
set background=dark
set backspace=indent,eol,start
set backupdir=~/.vim-tmp//
set clipboard=unnamed
set complete=.,w,b
set completeopt=menu,preview,longest
set directory=~/.vim-tmp//
set fileencodings=ucs-bom,utf-8,default,latin1
set foldlevelstart=1
set helplang=C.
set hidden
set history=1000
set hlsearch
set incsearch
set laststatus=2
set listchars=tab:┆\ ,eol:¬,trail:���,extends:❯,precedes:❮
set matchtime=2
set mouse=nv
set printoptions=paper:a4
set ruler
set runtimepath=~/.vim,~/.vim/bundle/Vundle.vim,~/.vim/bundle/gruvbox,~/.vim/bundle/vim-fugitive,~/.vim/bundle/nerdtree,~/.vim/bundle/vim-airline,~/.vim/bundle/syntastic,~/.vim/bundle/vdebug,~/.vim/bundle/ctrlp.vim,~/.vim/bundle/nerdcommenter,~/.vim/bundle/tagbar,~/.vim/bundle/bclose.vim,~/.vim/bundle/ultisnips,~/.vim/bundle/vim-surround,~/.vim/bundle/AnsiEsc.vim,~/.vim/bundle/vim-table-mode,~/.vim/bundle/Mark,~/.vim/bundle/vim-wakatime,~/.vim/bundle/emmet-vim,/var/lib/vim/addons,/usr/share/vim/vimfiles,/usr/share/vim/vim74,/usr/share/vim/vimfiles/after,/var/lib/vim/addons/after,~/.vim/after,~/.vim/bundle/Vundle.vim,~/.vim/bundle/Vundle.vim/after,~/.vim/bundle/gruvbox/after,~/.vim/bundle/vim-fugitive/after,~/.vim/bundle/nerdtree/after,~/.vim/bundle/vim-airline/after,~/.vim/bundle/syntastic/after,~/.vim/bundle/vdebug/after,~/.vim/bundle/ctrlp.vim/after,~/.vim/bundle/nerdcommenter/after,~/.vim/bundle/tagbar/after,~/.vim/bundle/bclose.vim/after,~/.vim/bundle/ultisnips/after,~/.vim/bundle/vim-surround/after,~/.vim/bundle/AnsiEsc.vim/after,~/.vim/bundle/vim-table-mode/after,~/.vim/bundle/Mark/after,~/.vim/bundle/vim-wakatime/after,~/.vim/bundle/emmet-vim/after
set scrolloff=2
set shiftround
set shiftwidth=4
set showcmd
set showmatch
set showtabline=2
set sidescrolloff=5
set smartcase
set smartindent
set smarttab
set softtabstop=4
set statusline=%<%F%h%m%r\ [%{&ff}]\ (%{strftime(\"%H:%M\ %d/%m/%Y\",getftime(expand(\"%:p\")))})%=%l,%c%V\ %P
set suffixes=.bak,~,.swp,.o,.info,.aux,.log,.dvi,.bbl,.blg,.brf,.cb,.ind,.idx,.ilg,.inx,.out,.toc
set tabline=%!airline#extensions#tabline#get()
set tabstop=4
set timeoutlen=200
set title
set visualbell
set wildmenu
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd /d/root/dev-env/timeCrashDisplay
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +16 index.html
badd +1 script.js
badd +11 sass/style.scss
badd +2 script/script.js
badd +8 bio.html
badd +1 css/style.css
argglobal
silent! argdel *
edit sass/style.scss
set splitbelow splitright
wincmd _ | wincmd |
split
1wincmd k
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
exe '1resize ' . ((&lines * 22 + 23) / 46)
exe '2resize ' . ((&lines * 20 + 23) / 46)
argglobal
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal backupcopy=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=s1:/*,mb:*,ex:*/,://,b:#,:%,:XCOMM,n:>,fb:-
setlocal commentstring=//\ %s
setlocal complete=.,w,b
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=^\\s*\\%(@mixin\\|=\\)
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal noexpandtab
if &filetype != 'scss'
setlocal filetype=scss
endif
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=1
setlocal foldmarker={{{,}}}
set foldmethod=marker
setlocal foldmethod=marker
setlocal foldminlines=1
set foldnestmax=10
setlocal foldnestmax=10
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=tcq
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=0
setlocal include=^\\s*@import\\s\\+\\%(url(\\)\\=[\"']\\=
setlocal includeexpr=substitute(v:fname,'\\%(.*/\\|^\\)\\zs','_','')
setlocal indentexpr=GetCSSIndent()
setlocal indentkeys=0{,0},!^F,o,O
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
set linebreak
setlocal linebreak
setlocal nolisp
setlocal lispwords=
set list
setlocal list
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=bin,octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=csscomplete#CompleteCSS
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
set relativenumber
setlocal relativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=4
setlocal noshortname
setlocal nosmartindent
setlocal softtabstop=4
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=%!airline#statusline(1)
setlocal suffixesadd=.sass,.scss,.css
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'scss'
setlocal syntax=scss
endif
setlocal tabstop=4
setlocal tagcase=
setlocal tags=
setlocal textwidth=0
setlocal thesaurus=
setlocal noundofile
setlocal undolevels=-123456
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
let s:l = 11 - ((10 * winheight(0) + 11) / 22)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
11
normal! 0
wincmd w
argglobal
edit index.html
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal backupcopy=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=j1,J1
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=s:<!--,m:\ \ \ \ ,e:-->
setlocal commentstring=<!--%s-->
setlocal complete=.,w,b
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal noexpandtab
if &filetype != 'html'
setlocal filetype=html
endif
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=1
setlocal foldmarker={{{,}}}
set foldmethod=marker
setlocal foldmethod=marker
setlocal foldminlines=1
set foldnestmax=10
setlocal foldnestmax=10
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=tcq
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=0
setlocal include=
setlocal includeexpr=
setlocal indentexpr=HtmlIndent()
setlocal indentkeys=o,O,<Return>,<>>,{,},!^F
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
set linebreak
setlocal linebreak
setlocal nolisp
setlocal lispwords=
set list
setlocal list
setlocal makeprg=
setlocal matchpairs=(:),{:},[:],<:>
setlocal modeline
setlocal modifiable
setlocal nrformats=bin,octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=htmlcomplete#CompleteTags
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
set relativenumber
setlocal relativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=4
setlocal noshortname
setlocal smartindent
setlocal softtabstop=4
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=pt_br
setlocal statusline=%!airline#statusline(2)
setlocal suffixesadd=
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'html'
setlocal syntax=html
endif
setlocal tabstop=4
setlocal tagcase=
setlocal tags=
setlocal textwidth=0
setlocal thesaurus=
setlocal noundofile
setlocal undolevels=-123456
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal nowrap
setlocal wrapmargin=0
let s:l = 14 - ((13 * winheight(0) + 10) / 20)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
14
normal! 081|
wincmd w
exe '1resize ' . ((&lines * 22 + 23) / 46)
exe '2resize ' . ((&lines * 20 + 23) / 46)
tabnext 1
if exists('s:wipebuf')
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToO
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
