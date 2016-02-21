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

git clone -q https://github.com/powerline/fonts ~/.vii/fonts
sh ~/.vii/fonts/install.sh
git clone -q https://github.com/VundleVim/Vundle.vim.git ~/.vii/bundle/Vundle.vim

echo 'set runtimepath+=~/.vii

source ~/.vii/vimrcs/basic.vim
source ~/.vii/vimrcs/filetypes.vim
source ~/.vii/vimrcs/plugins.vim

source ~/.vii/vimrcs/mappings/laravel.vim

try
    source ~/.vii/custom.vim
catch
endtry' > ~/.vimrc

vim +PluginInstall +qall

echo "Everything looks fine, enjoy ;)"
