# Install Brew and Brew Packages
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew tap caskroom/cask
brew tap caskroom/versions

# install spacemacs
brew tap d12frosted/emacs-plus
brew install emacs-plus
brew linkapps emacs-plus
git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d

# CLI Applications
brew install node
brew install wget
brew install git
brew install awscli
brew install zsh
brew install terraform
brew install golang

# GUI Applications
brew cask install google-chrome
brew cask install spotify
brew cask install visual-studio-code
brew cask install docker
brew cask install iterm2
brew cask install rescuetime
brew cask install 1password
brew cask install slack
brew cask install omnifocus

# install rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
