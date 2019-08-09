# Create home directory config symlinks
ln -sv ~/.me/.profile ~

for HOMECONF in `find ~/.me/conf/.home`
do
	ln -sv $HOMECONF ~
done

for INSTALLFILE in `find ~/.me/install`
do
	bash INSTALLFILE
done

# ZSH default shell
chsh -s $(which zsh)

# download zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions /usr/local/share/zsh-autosuggestions
