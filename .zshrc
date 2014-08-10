# vim:set foldmethod=marker:

# 補完関連 {{{
autoload -Uz compinit; compinit
# 上下左右で補完候補を選択する
zstyle ':completion:*:default' menu select=1
# }}}

# プロンプト関連 {{{
# プロンプトの中で変数などが展開されるようにする
setopt prompt_subst
# 左から「ユーザ名」「リターンコード」「日付と時間」「ヒストリ番号」「カレントディレクトリ」
PROMPT=$'\n'
PROMPT=$PROMPT$'%{\e[48;5;%(?.86;37.160;30)m%} %n '
PROMPT=$PROMPT$'%{\e[38;5;%(?.86.160);48;5;246m%}%{\e[30m%} %? '
PROMPT=$PROMPT$' %D %* '
PROMPT=$PROMPT$' %h '
PROMPT=$PROMPT$' %\$((\$COLUMNS - 50))<...<%~%<< '
PROMPT=$PROMPT$'%{\e[0;38;5;246m%}%{\e[0m%}\n'
PROMPT=$PROMPT$'%{\e[30;48;5;238m%} %# %{\e[0;38;5;238m%}%{\e[0m%} '
# forなどで行が継続したときのためのプロンプトの設定
PROMPT2=$'%{\e[30;48;5;240m%} %_ %{\e[0;38;5;240m%}%{\e[0m%} '
# }}}

# ヒストリ関連 {{{
# ヒストリを保存するファイルの場所
export HISTFILE=$ZDOTDIR/.zsh_history
# メモリに保存されるヒストリの件数
export HISTSIZE=100000
# ファイルに保存されるヒストリの件数
export SAVEHIST=100000

# 同じコマンドを連続で実行した場合、記録しない
setopt hist_ignore_dups
# 実行時刻と終了時刻も保存する
setopt extended_history
# すぐにファイルに保存する
setopt inc_append_history
# スペースから始まる場合はヒストリに保存しない
setopt hist_ignore_space
# プロセス間でヒストリを共有する
setopt share_history
# }}}

# alias関連 {{{
# ls関連
alias ls='ls --color'
alias lsa='ls -a'
# clearよりclsの方が打ちやすい
alias cls='clear'
# mkdir+cd = take
alias take='(){ mkdir -p $1; cd $1 }'

# もうrm -rf ~の悲劇を起こさないために
alias rm='rm -i'

# ghqのリポジトリ一覧をpecoで選択してcd
alias ghqcd='cd $(ghq list -p | peco)'
alias ghqopen='gh-open $(ghq list -p | peco)'
# }}}

# ディレクトリ関連 {{{
setopt auto_cd # ディレクトリ名のみで移動できる
# }}}

# Hashの設定 {{{
hash -d dot=$HOME/dotfiles
hash -d dev=$HOME/develop
# }}}

# Wine関連 {{{
export WINEPREFIX=$HOME/.wine
export WINEARCH=win32
# }}}
