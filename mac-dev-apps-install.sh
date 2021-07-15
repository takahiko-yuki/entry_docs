#!/bin/bash

# to use...
# $ bash ./mac-dev-apps-install.sh
# 解説は別ドキュメント.

# homebrew
xcode-select --install;/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)";

# zshrc
touch ~/.zshrc;

# git + node.js + nvm
echo 'export NVM_DIR="$HOME/.nvm"' >> ~/.zshrc;

## intel cpu ver
# echo '"[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm"' >> ~/.zshrc;  
# echo ' [ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion' >> ~/.zshrc; 

## m1 cpu ver.
echo '"[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && . "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm"' >> ~/.zshrc;  
echo ' [ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && . "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion' >> ~/.zshrc; 

brew install nvm; source ~/.zshrc; 

## please execute manually.
# nvm install stable && nvm install lts/erbium && nvm install lts/dubnium lts/carbon; 
# nvm alias default lts/dubnium

# with brew
brew install git
brew install anyenv
brew install gh

# with brew cask
brew install diffmerge --cask
brew install google-chrome --cask
brew install google-japanese-ime --cask
brew install slack --cask
brew install mysqlworkbench --cask
brew install sourcetree --cask
brew install visual-studio-code --cask
brew install docker --cask

# m1 cpu only
# sudo softwareupdate --install-rosetta
# brew install google-japanese-ime --cask
# brew install docker --cask

# add git setting
# https://git-scm.com/book/ja/v2/%E4%BD%BF%E3%81%84%E5%A7%8B%E3%82%81%E3%82%8B-%E6%9C%80%E5%88%9D%E3%81%AEGit%E3%81%AE%E6%A7%8B%E6%88%90
# git config --global core.editor emacs
# $ git config --global user.name "John Doe"
# $ git config --global user.email johndoe@example.com

# customize zsh
# いずれ書きます.