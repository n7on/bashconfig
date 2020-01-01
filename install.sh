#!/bin/bash

DIR=~

if [[ $EUID -eq 0 ]] ; then
    DIR=/root
else
    echo "To have same conf as sudo, run sudo $0"
fi


if [[ ! -f $DIR/.bash_profile.old ]] ; then 
    mv $DIR/.bash_profile $DIR/.bash_profile.old 2> /dev/null
fi

echo "Copying conf files to $DIR"
cp .bash_profile $DIR/
cp .vimrc $DIR/
cp .tmux.conf $DIR/

echo "Downloading vim Plug, in vim do :PlugInstall to install vim plugins"

curl -s -o plug.vim https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

mkdir -p $DIR/.vim/autoload $DIR/.vim/plugged

mv plug.vim $DIR/.vim/autoload/

echo "See README.md for cheat sheet"
