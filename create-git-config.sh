#!/bin/bash

echo "Git config"
read -p "Enter fullname: " FULLNAME
read -p "Enter email: " EMAIL
cp .gitconfig.template .gitconfig

sed -i "s/%FULLNAME%/$FULLNAME/g" .gitconfig
sed -i "s/%EMAIL%/$EMAIL/g" .gitconfig
