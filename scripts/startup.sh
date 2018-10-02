#!/bin/bash

# TODO
# install python 2.7 ad 3
# install pip
# pip install grip

sudo apt update
sudo apt upgrade

sudo apt install \
  compton \
  curl \
  feh \
  git \
  rxvt-unicode \
  scrot \
  tmux \
  vim-gtk \
  xclip \
  zsh \

# Set up global .gitignore
printf "\n${bold}Set up Global gitignore${normal}"
cd ~
git config --global core.excludesfile ~/.gitignore_global
mkdir .gitignore && cd .gitignore
git clone https://gist.github.com/6a9e981a7ef131dd3f5180da28ada21b.git .
cd ~
rm .gitignore_global
ln -s ~/.gitignore/.gitignore_global ~/.gitignore_global

# Install Node Latest
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash
source ~/.bashrc
nvm install --lts
nvm alias default lts/*
#nvm use --lts

# Install Oh My Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Install fzf
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

# Set up vim
printf "\n${bold}Setting up vim ${normal}"
cd ~ && git clone https://github.com/BraveLilToaster/.vim.git
ln -s -f ~/.vim/.vimrc ~/.vimrc
vim +PlugInstall +qall > /dev/null 2>&1

# Set up tmux
printf "\n${bold}Setting up tmux${normal}"
cd ~ && git clone https://github.com/gpakosz/.tmux.git
ln -s -f .tmux/.tmux.conf
mkdir .tmux.local && cd .tmux.local
git clone https://gist.github.com/1979baa6cf78fb4403d0622fb179a5f0.git .
ln -s -f ~/.tmux.local/.tmux.conf.local ~/.tmux.conf.local

