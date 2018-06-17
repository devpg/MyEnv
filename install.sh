#!/bin/bash

xcode-select --install

# update package
git pull origin master

# set execution rights
chmod +x install.sh

# link dotfiles
ln -s dotfiles/.bash_profile ~/.bash_profile

# brew stuff
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew bundle

# ruby
# rbenv install 2.2.5
# rbenv global 2.2.5

gem install bundler

echo "******************** Done ********************"
echo "Don't forget to configure SSH properly with key and config"
