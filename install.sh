#!/bin/bash
cp .bash_profile ~/
cp .vimrc ~/
cp .tmux.conf ~/

if [ ! -f ./plug.vim ] ; then
    curl -o plug.vim https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
fi

mkdir -p ~/.vim/autoload

cp plug.vim ~/.vim/autoload/

mkdir -p ~/.vim/plugged
