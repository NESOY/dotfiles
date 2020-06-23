#!/bin/bash
#
# Nesoy
# github.com/nesoy

DOTFILE_HOME=`eval echo ~/.nesoy`
EMAIL="kyoje11@gmail.com"
NAME="Kwon Young Jae"
ZPLUG_HOME=~/.zplug

echo "Install Xcode🍺"
xcode-select --install


echo "Install Brew🍺"
if [ -z "$(which brew)" ]
then
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
    echo "✅Already Install Brew"
fi


echo "Install Brew Manager🍺"
if [ -z "$(which mas)" ]
then
    brew install mas
    curl -o ~/.nesoy/BrewFile --create-dirs https://raw.githubusercontent.com/NESOY/dotfiles/master/BrewFile
else
    echo "✅Already Install Brew Manager"
fi


# echo "Install Brew Files🍺"
# brew bundle --file ~/.nesoy/BrewFile


echo "Install Oh-my-zsh🍺"
if [ -d `eval echo ~/.oh-my-zsh` ]; then
    echo "✅Already Install Oh-my-zsh"
else
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
fi


echo "Install Zplug🍺"
if [ -d `eval echo ~/.zplug` ]; then
    echo "✅Already Install Zplug"
else
    git clone https://github.com/zplug/zplug $ZPLUG_HOME
fi


echo "Install SCM_BREEZE🍺"
if [ -d `eval echo ~/.scm_breeze` ]; then
    echo "✅Already Install SCM_BREEZE🍺"
else
    git clone git://github.com/scmbreeze/scm_breeze.git ~/.scm_breeze
    ~/.scm_breeze/install.sh
fi


echo "Config Git🍺"
# git config --global user.name $NAME
# git config --global user.email $EMAIL
# # Handling Korean Option
# git config --global core.precomposeunicode true
# git config --global core.quotepath false


echo "Config zsh🍺"
curl -o ~/.nesoy/.zshrc --create-dirs https://raw.githubusercontent.com/NESOY/dotfiles/master/.zshrc