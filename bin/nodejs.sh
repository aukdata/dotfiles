#!/bin/zsh

echo 'Configrating node.js...'

mkdir -p "${HOME}/.npm-packages"
npm install -g node
npm install -g pnpm

echo ""
