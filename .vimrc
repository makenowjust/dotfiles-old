" vim:set foldmethod=marker:

" Vi非互換にする
set nocompatible

" 表示関連 {{{
set number        " 行番号を表示する
set numberwidth=4 " 行番号は4桁表示する
set notitle       " 端末のタイトルを変更しない
" }}}

" インデント関連 {{{
set shiftwidth=2 " インデントは2文字
set expandtab    " タブをスペースにする
set tabstop=2    " タブも2文字のスペースにする
augroup USE_TAB
  autocmd!
  autocmd FileType asm setl tabstop=8
  autocmd FileType makefile,asm,go setl noexpandtab
augroup END
" }}}

" 移動関連 {{{
set whichwrap=b
set backspace=indent,eol,start
set scrolloff=5
" }}}

" コピペ関連 {{{
" ヤンクした内容をクリップボードと共有する
"if has('xterm_clipboard')
"  set clipboard=unnamedplus
"elseif has('clipboard')
"  set clipboard=unnamed
"endif

if has('clipboard')
  " <Space>pで直前にヤンクした内容をペースト
  nnoremap <Space>p "0p
  " <C-Space>pでクリップボードの内容をペースト
  nnoremap <C-p> "*p
endif
" }}}

" マウス関連 {{{
if has('mouse')
"  set mouse=a         " 全ての状態でマウスを有効にする
"  set ttymouse=xterm2
endif
" }}}

" タブ関連 {{{
set showtabline=2
" }}}

" エンコーディング関連 {{{
set fileencodings=utf-8,euc-jp,shift_jis
set encoding=utf-8
" }}}

" NeoBundleの読み込み {{{
if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim
endif

call neobundle#rc(expand('~/.vim/bundle'))

" NeoBundle自身をNeoBundleで管理
NeoBundleFetch 'Shougo/neobundle.vim'
" }}}

NeoBundle 'vim-jp/vimdoc-ja'

NeoBundle 'altercation/vim-colors-solarized'
NeoBundle 'itchyny/lightline.vim'

NeoBundle 'Shougo/neocomplete.vim'
NeoBundle 'Shougo/neosnippet.vim'
NeoBundle 'Shougo/neosnippet-snippets'

NeoBundle 'digitaltoad/vim-jade'

NeoBundle 'dart-lang/dart-vim-plugin'

NeoBundle 'wavded/vim-stylus'

NeoBundle 'jponge/vim-golo'

" {{{ neocomplete.vim
" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplete.
let g:neocomplete#enable_at_startup = 1
" Optional use
let g:neocomplete#disable_auto_complete = 1
" <ctrl><space>で表示
inoremap <expr><nul> pumvisible() ? "\<down>" : neocomplete#start_manual_complete()
" Use smartcase.
let g:neocomplete#enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplete#sources#syntax#min_keyword_length = 3
let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'

" Plugin key-mappings.
inoremap <expr><C-g>     neocomplete#undo_completion()
inoremap <expr><C-l>     neocomplete#complete_common_string()
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" }}}

" {{{ neosnippet.vim
" Plugin key-mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)

" SuperTab like snippets behavior.
imap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)"
\: pumvisible() ? "\<C-n>" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)"
\: "\<TAB>"

" For snippet_complete marker.
if has('conceal')
  set conceallevel=2 concealcursor=i
endif
" }}}

" Boo言語関連 {{{
NeoBundle 'rmartinho/vim-boo'
" }}}

" Go言語関連 {{{
if $GOROOT != ''
  set rtp+=$GOROOT/misc/vim
endif
" }}}

" LFE関連 {{{
augroup LFE
  au!
  au BufRead,BufNewFile *.lfe setl ft=lisp
augroup END
" }}}

" Markdown関連 {{{
augroup Markdown
  au!
  au BufRead,BufNewFile *.md setl ft=markdown
augroup END
" }}}

" NeoBundleの終了 {{{
call neobundle#end()
filetype plugin indent on
NeoBundleCheck
" }}}

" lightline.vimの設定 {{{
set laststatus=2
if !has('gui_running')
  set t_Co=256
endif
let g:lightline = {}
let g:lightline.colorscheme = 'solarized'
let g:lightline.separator = { 'left': '', 'right': '' }
let g:lightline.subseparator = { 'left': '', 'right': '' }
" }}}

" Fortran関連 {{{
let g:fortran_free_source = 1
" }}}

" 構文強調関連 {{{
syntax enable
let g:solarized_termcolors = 256
let g:solarized_termtrans = 1
set background=light
colorscheme solarized
" }}}

" 改行時にコメントが継続するのを抑制
autocmd FileType * set formatoptions-=ro
