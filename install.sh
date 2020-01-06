#!/bin/bash

DIR=~

if [[ $EUID -eq 0 ]] ; then
    DIR=/root
else
    echo "To have same conf as sudo, run sudo $0"
fi

echo "Copying conf files to $DIR"
cp .bashconfig $DIR/
cp .tmux.conf $DIR/

curl -s -o plug.vim https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

mkdir -p $DIR/.vim/autoload $DIR/.vim/plugged

mv plug.vim $DIR/.vim/autoload/

echo "See README.md for cheat sheet"
vim -c PlugInstall 
cp .vimrc $DIR/
