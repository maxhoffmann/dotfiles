#!/usr/bin/env bash

cd "$(dirname "${BASH_SOURCE}")";

git pull origin master;

function copyToHomeDirectory() {
	rsync -avhP --no-perms \
		--exclude ".git/" \
		--exclude ".DS_Store" \
		--exclude "setup.sh" \
		--exclude "README.md" \
		--exclude "LICENSE" \
		--exclude "Brewfile" \
		--exclude "Caskfile" \
		. ~;
	source ~/.bash_profile;
}

if [ "$1" == "--force" -o "$1" == "-f" ]; then
	copyToHomeDirectory;
else
	read -p "This may overwrite existing files in your home directory. Are you sure? (y/n) " -n 1;
	echo "";
	if [[ $REPLY =~ ^[Yy]$ ]]; then
		copyToHomeDirectory;
	fi;
fi;
unset copyToHomeDirectory;
