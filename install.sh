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
mas signin andre.neubauer@googlemail.com
mas upgrade

# ruby
# rbenv install 2.2.5
# rbenv global 2.2.5

# gem install bundler

echo "******************** Done ********************"
echo "Don't forget to configure SSH properly with key and config"
