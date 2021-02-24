#!/usr/bin/env bash

function echo-ext (){

    echo -e "\e[1;32m - $1 \e[0m"
}


DIR=~

if [[ $EUID -eq 0 ]] ; then
    DIR=/root
else
    echo-ext "To have same conf as sudo, run sudo $0"
fi

COMMENT="# bashconfig load"

read -r -d '' CODE << EOM
if [ -f ~/.bashconfig ]; then
    . ~/.bashconfig
fi
EOM

if ! grep --quiet "$COMMENT" $DIR/.bashrc ; then
    
    printf "\n$COMMENT\n$CODE" >> $DIR/.bashrc
fi

if [[ ! -d backup  ]]; then
    mkdir backup
    cp $DIR/.tmux.conf ./backup > /dev/null
    cp $DIR/.gitconfig ./backup > /dev/null
    cp $DIR/.vimrc ./backup > /dev/null
fi
echo-ext "Backup in $(pwd)/backup"

if [[ ! -f .gitconfig  ]] ; then
    . ./create-git-config.sh
    cp .gitconfig $DIR/
fi

echo-ext "Copying conf files to $DIR"
cp .bashconfig $DIR/
cp .tmux.conf $DIR/
cp .vimrc $DIR/


# install vim modules
curl -s -o plug.vim https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

mkdir -p $DIR/.vim/autoload $DIR/.vim/plugged

mv plug.vim $DIR/.vim/autoload/

vim -c PlugInstall 

