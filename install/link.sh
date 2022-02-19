# Create home directory config symlinks
ln -sv ~/.me/.profile ~
ln -sv ~/.me/.profile ~/.zshrc

for HOMECONF in `find ~/.me/conf/home`
do
	ln -sv $HOMECONF ~
done
