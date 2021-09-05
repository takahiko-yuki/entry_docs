#!/bin/bash

# Used after setting the gh command
# $ gh auth login
# $ bash ./github_tool.sh

# tool install path. Please rewrite.
# @TODO: 引数にする
cd ~/
mkdir tools/
cd tools/

# zsh z command
# https://github.com/rupa/z
gh repo clone rupa/z
chmod 755 z/z.sh
echo `cd $(dirname ${0}) && pwd`/tools/z/z.sh  >> ~/.zshrc;
echo `cd $(dirname ${0}) && pwd`/tools/z/z.sh  >> ~/.zshrc;
echo 'alias j=z' >> ~/.zshrc;
