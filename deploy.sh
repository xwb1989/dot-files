#!/bin/bash
./undeploy.sh

# install brew if it's MacOS
if [[ "$OSTYPE" == "darwin"* ]]; then
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

git submodule update --init
vim +PluginInstall +qall

# install oh-my-zsh and zsh
curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh
chsh -s /bin/zsh

# insall scm_breeze
git clone git://github.com/scmbreeze/scm_breeze.git ~/.scm_breeze
~/.scm_breeze/install.sh

# link the dot files
ln -s `pwd`/gitignore ~/.gitignore
ln -s `pwd`/gitconfig ~/.gitconfig
ln -s `pwd`/vim ~/.vim
ln -s `pwd`/vimrc ~/.vimrc
ln -s `pwd`/zshrc ~/.zshrc
ln -s `pwd`/vrapperrc ~/.vrapperrc

# ready to roll!
source ~/.zshrc
