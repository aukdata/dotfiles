#!/bin/zsh

echo 'Configrating node.js...'

mkdir -p "$HOME/.npm-packages"
cp ./home/.npmrc "$HOME/.npmrc"

npm install -g node
npm install -g pnpm

echo ""
