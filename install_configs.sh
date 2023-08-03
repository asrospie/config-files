echo "Are you sure you want to copy the files? (y/N)"

read input

if [ $input = 'y' ]
then
    echo "Copying files..."
    cp config.toml ~/.config/helix/config.toml
    cp languages.toml ~/.config/helix/languages.toml
    echo "Done."
fi