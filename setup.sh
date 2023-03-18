#! /bin/sh
installBrew(){
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    brew update
}

installBrewApps(){
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
}

installAppStoreApps(){
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
}

installAndSetupOhMyZsh(){
    #Oh My Zsh
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

    #PowerLevel10k theme
    git clone https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k

    #Auto Suggestions Plugin
    git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

    echo "What is your user?"
    read user
    cp .zshrc /Users/$user

}


#installBrew
#installBrewApps
#installAppStoreApps
installAndSetupOhMyZsh

echo "All Done! Enjoy! :)"
