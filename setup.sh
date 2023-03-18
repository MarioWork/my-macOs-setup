#! /bin/sh
#Colors
Yellow='\033[1;33m'
Red='\033[0;31m'
Green='\033[0;32m'
NoColor='\033[1;37m'


installBrew(){
    echo "${Yellow}Installing Brew started...${NoColor}"
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    brew update
}

installBrewApps(){
    echo "${Yellow}Installing Brew Apps started...${NoColor}"

    brew install git
    brew install mas
    brew install gh
    brew install node
    brew install nvm
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
    echo "${Yellow}Installing AppStore Apps started...${NoColor}"

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
    #BitWarden
    mas install 1352778147
}

installAndSetupOhMyZsh(){
    echo "${Yellow}Setup for Oh My Zsh started...${NoColor}"

    #Oh My Zsh
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

    #PowerLevel10k theme
    git clone https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k

    #Auto Suggestions Plugin
    git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

    echo "What is your user?"
    read user
    cp .zshrc /Users/$user
    source ~/.zshrc
}

setupSshKeyGithub(){
    echo "${Yellow}Setup for Github SSH KEY started...${NoColor}"
    echo "Enter your Github email"
    read email
    ssh-keygen -t ed25519 -C $email
    echo "Enter title for your SSH key"
    read title
    gh ssh-key add ~/.ssh/id_ed25519.pub --title $title
}

#installBrew
#installBrewApps
#installAppStoreApps
#installAndSetupOhMyZsh
#setupSshKeyGithub

echo "${Green}All Done! Enjoy! :)${NoColor}"
