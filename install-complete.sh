#!/bin/bash
#
# install-complete.sh
#
# Description
#     Provide the complete vimrc installation
#     Plugins, themes and tweaks available
#
# Rodrigo Zani <rodrigo.zhs@gmail.com>

cd ~/.vii

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vii/bundle/Vundle.vim

echo 'set runtimepath+=~/.vii

source ~/.vii/vimrcs/basic.vim
source ~/.vii/vimrcs/filetypes.vim
source ~/.vii/vimrcs/plugins.vim

try
    source ~/.vii/custom.vim
catch
endtry' > ~/.vimrc

vim +PluginInstall +qall

echo "Everything looks fine, enjoy ;)"
