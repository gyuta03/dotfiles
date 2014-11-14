#! /bin/sh 

mv ~/.vimrc{,.orig}
ln -s ./.vimrc ~/.vimrc

mv ~/.bashrc{,.orig}
ln -s ./.bashrc ~/.bashrc

mv ~/.bash_profile{,.orig}
ln -s ./.bash_profile ~/.bash_profile

mkdir -p ~/.vim/bundle
git clone https://github.com/Shougo/neobundle.vim ~/.vim/bundle

mv ~/.tmux.conf{,.orig}
ln -s ./.tmux.conf ~/.tmux.conf

git clone https://github.com/sstephenson/rbenv ~/.rbenv
source ~/.bash_profile
git clone https://github.com/sstephenson/ruby-build ~/.plugins/ruby-build
