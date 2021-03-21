#!/bin/bash


DIR=$HOME

download-copy(){
    url=$1
    local_file=$2

    if [ -f $local_file ];then
        
        read -p "Overwrite $local_file? (y/n) " answer
        case ${answer:0:1} in
            y|Y )
                tmpfile=$(mktemp /tmp/bashconfig.XXXXXX)
                curl -s -o $tmpfile $url
                mv $tmpfile $local_file
                ;;
            * )
                echo "Skipping $local_file"
                ;;
        esac
    fi
}

cat << "EOF"

 /$$$$$$$                      /$$        /$$$$$$                       /$$$$$$  /$$          
| $$__  $$                    | $$       /$$__  $$                     /$$__  $$|__/          
| $$  \ $$  /$$$$$$   /$$$$$$$| $$$$$$$ | $$  \__/  /$$$$$$  /$$$$$$$ | $$  \__/ /$$  /$$$$$$ 
| $$$$$$$  |____  $$ /$$_____/| $$__  $$| $$       /$$__  $$| $$__  $$| $$$$    | $$ /$$__  $$
| $$__  $$  /$$$$$$$|  $$$$$$ | $$  \ $$| $$      | $$  \ $$| $$  \ $$| $$_/    | $$| $$  \ $$
| $$  \ $$ /$$__  $$ \____  $$| $$  | $$| $$    $$| $$  | $$| $$  | $$| $$      | $$| $$  | $$
| $$$$$$$/|  $$$$$$$ /$$$$$$$/| $$  | $$|  $$$$$$/|  $$$$$$/| $$  | $$| $$      | $$|  $$$$$$$
|_______/  \_______/|_______/ |__/  |__/ \______/  \______/ |__/  |__/|__/      |__/ \____  $$
                                                                                     /$$  \ $$
                                                                                    |  $$$$$$/
                                                                                     \______/ 
              *---------- Preconfigured configs for Bash, Tmux & Vim
EOF

download-copy "https://raw.githubusercontent.com/dud380/bashconfig/master/.bashconfig" $DIR/.bashconfig
download-copy "https://raw.githubusercontent.com/dud380/bashconfig/master/.tmux.conf" $DIR/.tmux.conf
download-copy "https://raw.githubusercontent.com/dud380/bashconfig/master/.vimrc" $DIR/.vimrc

exit 
COMMENT="# BashConfig load"

read -r -d '' CODE << EOM
if [ -f ~/.bashconfig ]; then
    . ~/.bashconfig
fi
EOM

if ! grep --quiet "$COMMENT" $DIR/.bashrc ; then
    
    printf "\n$COMMENT\n$CODE" >> $DIR/.bashrc
	print
fi


# install vim.plug
echo "Installing vim.plug"
mkdir -p $DIR/.vim/autoload $DIR/.vim/plugged


# install vim modules
curl -s -o $DIR/.vim/autoload/plug.vim https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

vim +PluginInstall +qall


