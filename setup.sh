#!/bin/bash

function abort() {
    echo $1
    exit 1
}

if [ "$(uname)" == 'Darwin' ]; then
  export OS='macos'
elif [ "$(expr substr $(uname -s) 1 5)" == 'Linux' ]; then
  export OS='linux'
else
  abort "Your platform ($(uname -a)) is not supported."
fi

echo "Operating system: ${OS}"
echo ""

~/dotfiles/bin/packages.sh
~/dotfiles/bin/zsh.sh
~/dotfiles/bin/git.sh
~/dotfiles/bin/python.sh
~/dotfiles/bin/nodejs.sh

echo "Setup complete!"
