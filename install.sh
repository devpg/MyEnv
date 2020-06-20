#!/bin/bash

xcode-select --install

# update package
git pull origin master

# set execution rights
chmod +x install.sh

# relink config files
pwd=`pwd`
rm -f ~/.profile
ln -s $pwd/config/profile ~/.profile

# install brew and apps (incl. app store)
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
cd config
brew bundle
