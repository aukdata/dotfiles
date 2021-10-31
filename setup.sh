#!/bin/bash

function abort() {
    echo $1
    exit 1
}

cd "$HOME/dotfiles"

if [ "$(uname)" == 'Darwin' ]; then
  export OS='macos'
elif [ "$(expr substr $(uname -s) 1 5)" == 'Linux' ]; then
  export OS='linux'
else
  abort "Your platform ($(uname -a)) is not supported."
fi

echo "Operating system: $OS"
echo ""

./bin/packages.sh
./bin/zsh.sh
./bin/git.sh
./bin/python.sh
./bin/nodejs.sh

echo "Setup complete!"
