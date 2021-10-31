#!/bin/zsh

echo 'Configrating git...'

mkdir -p ~/.config/git
cp -f "./home/.config/git/$OS.gitignore" "$HOME/.config/git/ignore"


echo ""
