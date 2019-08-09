# Create home directory config symlinks
ln -sv ~/.me/.profile ~

for HOMECONF in `find ~/.me/conf/.home`
do
	ln -sv $HOMECONF ~
done
