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
"}}}

" 移動関連 {{{
set whichwrap=b
set backspace=indent,eol,start
set scrolloff=5
" }}}

" コピペ関連 {{{
" ヤンクした内容をクリップボードと共有する
if has('xterm_clipboard')
  set clipboard=unnamedplus
elseif has('clipboard')
  set clipboard=unnamed
endif

if has('clipboard')
  " pで直前にヤンクした内容をペースト
  nnoremap p "0p
  " <Space>pでクリップボードの内容をペースト
  nnoremap <Space>p "*p
endif
" }}}

" マウス関連 {{{
if has('mouse')
  set mouse=a         " 全ての状態でマウスを有効にする
  set ttymouse=xterm2
endif
" }}}
