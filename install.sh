# Create home directory config symlinks
ln -sv ~/.me/.profile ~

for HOMECONF in `find ~/.me/conf/.home`
do
	ln -sv $HOMECONF ~
done

# Install Brew and Brew Packages
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew tap caskroom/cask
brew tap caskroom/versions

# CLI Applications
brew install node
brew install wget
brew install git
brew install awscli
brew install zsh
brew install terraform

# GUI Applications
brew cask install google-chrome
brew cask install spotify
brew cask install visual-studio-code
brew cask install docker
brew cask install iterm2

# Install Node Packages
node i -g yarn 
node i -g expo 
node i -g create-react-app

# ZSH default shell
chsh -s $(which zsh)

# Configure MacOS Settings
# Screen shots
defaults write com.apple.screencapture location -string "$HOME/Documents/Screenshots"

# Finder
defaults write com.apple.finder _FXShowPosixPathInTitle -bool true
