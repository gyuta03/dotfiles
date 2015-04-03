#! /bin/sh 

if [ -d ~/.dotfiles ] ; then

  mv ~/.vimrc{,.orig}
  ln -s ~/.dotfiles/.vimrc ~/.vimrc

  mv ~/.vim{,.orig}
  ln -s ~/.dotfiles/vimfiles ~/.vim

  mv ~/.bashrc{,.orig}
  ln -s ~/.dotfiles/.bashrc ~/.bashrc

  mv ~/.bash_profile{,.orig}
  ln -s ~/.dotfiles/.bash_profile ~/.bash_profile

  mkdir -p ~/.dotfiles/.vim/bundle
  git clone https://github.com/Shougo/neobundle.vim ~/.dotfiles/vimfiles/bundle/neobundle.vim

  mv ~/.tmux.conf{,.orig}
  ln -s ~/.dotfiles/.tmux.conf ~/.tmux.conf

  mv ~/.tmux{,.orig}
  ln -s ~/.dotfiles/.tmux ~/.tmux

  git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

  git clone https://github.com/sstephenson/rbenv ~/.rbenv
  source ~/.bash_profile
  git clone https://github.com/sstephenson/ruby-build ~/.rbenv/plugins/ruby-build

fi
