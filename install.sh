#!/bin/bash
#
# Nesoy
# github.com/nesoy

DOTFILE_HOME="~/.nesoy"
EMAIL="kyoje11@gmail.com"
NAME="Kwon Young Jae"

echo "Install Xcode🍺"
xcode-select --install


echo "Install Brew🍺"
if [ -z "$(which brew)" ]
then
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi


echo "Install Brew Files🍺"
if [ -z "$(which mass)" ]
then
    brew install mas
    mkdir -p $DOTFILE_HOME
    curl https://raw.githubusercontent.com/NESOY/dotfiles/master/BrewFile -o $DOTFILE_HOME/BrewFile
    brew bundle --file $DOTFILE_HOME/BrewFile
fi


echo "Install Oh-my-zsh🍺"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"


echo "Install Zplug🍺"
export ZPLUG_HOME=~/.zplug
git clone https://github.com/zplug/zplug $ZPLUG_HOME


echo "Install SCM_BREEZE🍺"
git clone git://github.com/scmbreeze/scm_breeze.git ~/.scm_breeze
~/.scm_breeze/install.sh


echo "Config Git🍺"
git config --global user.name $NAME
git config --global user.email $EMAIL
# Handling Korean Option
git config --global core.precomposeunicode true
git config --global core.quotepath false


