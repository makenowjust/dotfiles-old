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
fi

# GoVMの設定
if [[ -d ~/.govm ]]; then
  GOVM_ROOT=$HOME/.govm
  GOROOT=$GOVM_ROOT/versions/current
  export GOPATH=$HOME/develop/go
  path+=($GOROOT/bin $GOPATH/bin)
fi
