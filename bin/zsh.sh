#!/bin/zsh

echo 'Configrating zsh...'

git clone --recursive https://github.com/sorin-ionescu/prezto.git ~/.zprezto

setopt EXTENDED_GLOB
for rcfile in `ls -1 ./home/.zprezto/runcoms`; do
  cp -f "./home/.zprezto/runcoms/$rcfile" "$HOME/.zprezto/runcoms/$rcfile"
  ln -fs "$HOME/.zprezto/runcoms/$rcfile" "$HOME/.${rcfile:t}"
done


source ~/.zshenv
source ~/.zshrc
source ~/.zpreztorc

echo ""
