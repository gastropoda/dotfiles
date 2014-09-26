#!/bin/sh

if [ ! -e ~/.vim/bundle/neobundle.vim ]; then
  echo "vim: bootstrapping neobundle"
  echo
  mkdir -p ~/.vim/bundle
  git clone https://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim
  echo
  echo "vim: neobundle installed"
  echo "vim: run vim to fetch all bundles"
fi
