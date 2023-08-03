echo "Are you sure you want to copy the files? (y/N)"

read input

if [ $input = 'y' ]
then
    echo "Copying files..."
    cp ~/.config/helix/config.toml config.toml
    cp ~/.config/helix/languages.toml languages.toml
    echo "Done."
fi