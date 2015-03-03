#! /bin/sh 

if [ -d ~/.dotfiles ] ; then

  mv ~/.vimrc{,.orig}
  ln -s ~/.dotfiles/.vimrc ~/.vimrc

  mv ~/.bashrc{,.orig}
  ln -s ~/.dotfiles/.bashrc ~/.bashrc

  mv ~/.bash_profile{,.orig}
  ln -s ~/.dotfiles/.bash_profile ~/.bash_profile

  mkdir -p ~/.vim/bundle
  git clone https://github.com/Shougo/neobundle.vim ~/.vim/bundle

  mv ~/.tmux.conf{,.orig}
  ln -s ~/.dotfiles/.tmux.conf ~/.tmux.conf

  git clone https://github.com/sstephenson/rbenv ~/.rbenv
  source ~/.bash_profile
  git clone https://github.com/sstephenson/ruby-build ~/.rbenv/plugins/ruby-build

fi
