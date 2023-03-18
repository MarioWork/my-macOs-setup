#! /bin/sh

######## Instal brew ########
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew update

######## Brew Apps ########
brew install git
brew install mas
brew install --cask iterm2
brew install --cask google-chrome
brew install --cask postman
brew install --cask visual-studio-code
brew install --cask alt-tab
brew install --cask dropbox
brew install --cask slack
brew install --cask discord
brew install --cask alfred
brew install --cask spotify
brew install --cask stats
brew install --cask hiddenbar
brew install --cask onyx

######## App Store Apps ###############
#CopyClip
mas install 595191960
#ColorSlurp
mas install 1287239339
#DropOver
mas install 1355679052
#Magnet
mas install 441258766
#Hand Mirror
mas install 1502839586


echo "All Done! Enjoy! :)"



