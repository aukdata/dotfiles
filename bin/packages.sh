#!/bin/bash

echo 'Installing necessary packages...'

if [ "$OS" == 'macos' ]; then
  brew info > /dev/null || /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  brew update || abort 'Unable to run brew'
  brew install wget tree python node zsh-completions
elif [ "$OS" == 'linux' ]; then
  sudo apt update || abort 'Unable to run apt'
  yes | sudo apt install tree nodejs npm zsh
  chsh /bin/zsh
fi

echo ""
