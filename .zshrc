# vim:set foldmethod=marker:

# 補完関連 {{{
autoload -Uz compinit; compinit
# 上下左右で補完候補を選択する
zstyle ':completion:*:default' menu select=1
# }}}

# プロンプト関連 {{{
setopt prompt_subst
PROMPT=$'\n'
PROMPT=$PROMPT$'%{\e[48;5;%(?.86;37.160;30)m%} %n '
PROMPT=$PROMPT$'%{\e[38;5;%(?.86.160);48;5;246m%}%{\e[30m%} %? '
PROMPT=$PROMPT$' %D %* '
PROMPT=$PROMPT$' %h '
PROMPT=$PROMPT$' %\$((\$COLUMNS - 45))>...>%~%>> '
PROMPT=$PROMPT$'%{\e[0;38;5;246m%}%{\e[0m%}\n'
PROMPT=$PROMPT$'%{\e[30;48;5;238m%} %# %{\e[0;38;5;238m%}%{\e[0m%} '
# }}}
