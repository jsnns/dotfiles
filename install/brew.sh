# Install Brew and Brew Packages
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew tap homebrew/cask
brew tap homebrew/cask-versions

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
brew install google-chrome --cask
brew install spotify --cask
brew install visual-studio-code --cask
brew install docker --cask
brew install iterm2 --cask
brew install rescuetime --cask
brew install 1password --cask
brew install slack --cask
brew install omnifocus --cask

# install rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
