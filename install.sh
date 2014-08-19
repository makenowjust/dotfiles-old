# vvm
[[ ! -d ~/.vvm ]] && curl -L https://raw.github.com/kana/vim-version-manager/master/bin/vvm | python - setup

# nodebrew
[[ ! -d ~/.nodebrew ]] && curl -L git.io/nodebrew | perl - setup

# GoVM
[[ ! -d ~/.govm ]] && curl -L git.io/govm | python - setup

# cljinst
[[ ! -d ~/.cljinst ]] && curl -L git.io/cljinst | bash -s setup

# rbenv
[[ ! -d ~/.rbenv ]] && git clone https://github.com/sstephenson/rbenv.git ~/.rbenv && git clone https://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build

# GVM
[[ ! -d ~/gvm ]] && curl -s get.gvmtool.net | bash

# kerl
[[ ! -f ~/develop/bin/kerl ]] && pushd ~/develop/bin && curl -LO https://raw.github.com/spawngrid/kerl/master/kerl && chmod +x kerl && popd

# kiex
[[ ! -d ~/.kiex ]] && curl -Lqs https://raw.githubusercontent.com/taylor/kiex/master/install | bash -s

# lein
[[ ! -f ~/develop/bin/lein ]] && pushd ~/develop/bin && curl -LO https://raw.githubusercontent.com/technomancy/leiningen/stable/bin/lein && chmod +x lein && popd
