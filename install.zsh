#!/bin/zsh

# Read the list of packages from the text file
while IFS= read -r package; do
    # Install each package using apt
    sudo apt-get install -y "$package"
done < packages.txt

