while read EXTENSION
do
    echo "Install VSCode Extension: $EXTENSION"
    code --install-extension $EXTENSION
done < $HOME/.me/conf/vscode/extensions.txt

ln -s ~/.me/conf/vscode/settings.json ~/Library/Application\ Support/Code/User/settings.json
ln -s ~/.me/conf/vscode/keybindings.json ~/Library/Application\ Support/Code/User/keybindings.json
ln -s ~/.me/conf/vscode/snippets/ ~/Library/Application\ Support/Code/User
