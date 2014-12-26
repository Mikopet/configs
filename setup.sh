#!/bin/bash

echo "Mikopet's bash environment setup"

cd configs

git submodule update --init

cd ..

array=(bashrc inputrc screenrc vimrc profile selected_editor environment aliases root.bashrc)

for index in ${!array[*]}
do
    printf "%4d# %s: " $(($index+1)) ${array[$index]}
    if [ -f  .${array[$index]} ]; then
        rm .${array[$index]}
    fi
    ln -sf configs/${array[$index]} .${array[$index]}
    echo "OK"
done


rm -rf .config
rm -rf .vim

ln -s configs/dotconfig .config
ln -s configs/dotvim .vim

echo "vim and config DIR is OK too"

mv .root.bashrc root.bashrc

cd configs

git config --global user.name "Mikola Peter"
git config --global user.email mikopet@gmail.com
git config --global core.excludesfile configs/ignore-patterns
git config --global color.ui true
git config --global help.autocorrect 20 # Fix typos automatically

git pull
git submodule update --init --merge

git submodule foreach git pull

