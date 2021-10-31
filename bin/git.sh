#!/bin/zsh

echo 'Configrating git...'

git config --global user.name takuma
git config --global user.email takuma.y0524@gmail.com

mkdir -p ~/.config/git
cp -f "./home/.config/git/$OS.gitignore" "$HOME/.config/git/ignore"


echo ""
