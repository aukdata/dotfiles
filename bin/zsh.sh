#!/bin/zsh

echo 'Configrating zsh...'

git clone --recursive https://github.com/sorin-ionescu/prezto.git ~/.zprezto
cp -rf ./home/.zprezto/runcoms/* ~/.zprezto/runcoms
setopt EXTENDED_GLOB
for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
  ln -s "$rcfile" "~/.${rcfile:t}"
done


source ~/.zshenv
source ~/.zshrc
source ~/.zpreztorc

echo ""
