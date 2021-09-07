#!/bin/bash

# to use...
# $ bash ./mac-dev-apps-install.sh

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
brew install java
brew install z

# package setting
echo '# z commnad' >> ~/.zshrc;
echo '. `brew --prefix`/etc/profile.d/z.sh' >> ~/.zshrc;
echo 'alias j=z' >> ~/.zshrc;

# jdk symlink
## https://formulae.brew.sh/formula/openjdk
## For the system Java wrappers to find this JDK, symlink it with
sudo ln -sfn $(brew --prefix)/opt/openjdk/libexec/openjdk.jdk /Library/Java/JavaVirtualMachines/openjdk.jdk

## with brew cask
brew install diffmerge --cask
brew install google-chrome --cask
brew install slack --cask
brew install mysqlworkbench --cask
brew install sourcetree --cask
brew install visual-studio-code --cask

## Drawing a UML Diagram in the vscode
brew install graphviz
brew install plantuml

# m1 cpu ver. 
sudo softwareupdate --install-rosetta
brew install google-japanese-ime --cask
brew install docker --cask
# brew install docker --cask
# brew install google-japanese-ime --cask

# git setting for vscode
# git config --global user.name "John Doe"  # 引数で渡すように.
# git config --global user.email johndoe@example.com # 引数で渡すように.
# git config --global core.editor 'code --wait'
# git config --global merge.tool 'code --wait "$MERGED"'

# 現在のブランチに追跡ブランチが設定されている、かつローカルとリモートのブランチ名が同じである場合に、追跡ブランチに対して push
# git config --global push.default simple
# currentに変更すると、現在のブランチと同名のリモートブランチがあれば、そこに push

# customize zsh
# いずれ書きます.