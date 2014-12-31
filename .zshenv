skip_global_compinit=true
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

# kerlの設定
ERL_VERSION=17.1
if [[ -d ~/develop/erlang/$ERL_VERSION ]]; then
  source ~/develop/erlang/$ERL_VERSION/activate
fi

# kiexの設定
if [[ -s ~/.kiex/scripts/kiex ]]; then
  source ~/.kiex/scripts/kiex
fi

# opamの設定
if [[ -d ~/.opam ]]; then
  source ~/.opam/opam-init/init.sh > /dev/null 2> /dev/null || true
fi

# svmの設定
if [[ -d ~/.svm ]]; then
  path+=$HOME/.svm/current/rt/bin
fi

# linuxbrewの設定
if [[ -d ~/.linuxbrew ]]; then
  path=($HOME/.linuxbrew/bin $path)
  export MANPATH="$HOME/.linuxbrew/share/man:$MANPATH"
  export INFOPATH="$HOME/.linuxbrew/share/info:$INFOPATH"
  export PKG_CONFIG_PATH="$HOME/.linuxbrew/lib64/pkgconfig:$HOME/.linuxbrew/lib/pkgconfig:$PKG_CONFIG_PATH"
fi

# その他パスの設定
# lein, kerlなど
path=($HOME/develop/bin $path)
export _JAVA_OPTIONS="-Xmx2g"
# cabal
path=($HOME/.cabal/bin $path)
# dart
export DART_CONFIGURATION=ReleaseX64
# java
export JAVA_HOME=/usr/lib/jvm/java-8-oracle
