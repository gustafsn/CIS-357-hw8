#!/bin/bash
# Logout current GitHub credentials and remove global user.name, user.email

clear

echo -e "host=github.com\nprotocol=https\n" | git credential-osxkeychain erase
echo -e "host=github.com\nprotocol=https\n" | git credential-osxkeychain erase
git config --unset-all --global user.name
git config --unset-all --global user.email

read -p "Please enter your GitHub email: " email
read -p "Please enter name: " name
git config --global user.email "$email"
git config --global user.name "$name"
