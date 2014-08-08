# ドットファイルを~/dotfilesに置く
ZDOTDIR=$HOME/dotfiles

# manのパスを設定
# （主にzshのために
export MANPATH=$HOME/man:

# VVMの設定
[[ -f ~/.vvm/etc/login ]] && . ~/.vvm/etc/login

# nodebrewの設定
if [[ -d ~/.nodebrew ]]; then
  path+=$HOME/.nodebrew/current/bin
  fpath+=$HOME/.nodebrew/completions/zsh
fi

# GoVMの設定
if [[ -d ~/.govm ]]; then
  export GOVM_ROOT=$HOME/.govm
  export GOROOT=$GOVM_ROOT/versions/current
  export GOPATH=$HOME/develop/go
  path+=($GOROOT/bin $GOPATH/bin)

  # ghqの補完のためにfpathを追加
  fpath+=$HOME/develop/go/src/github.com/motemen/ghq/zsh
fi

# cljinstの設定
if [[ -d ~/.cljinst ]]; then
  path+=$HOME/.cljinst
fi

# rbenvの設定
if [[ -d ~/.rbenv ]]; then
  path+=$HOME/.rbenv/bin
  eval "$(rbenv init -)"
fi

# GVMの設定
if [[ -d ~/.gvm ]]; then
  source $HOME/.gvm/bin/gvm-init.sh
fi

# その他パスの設定
# leinなど
path+=$HOME/develop/bin
