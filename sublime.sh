#!/usr/bin/env bash

function copySublimeSettings() {
	rsync -avhP --no-perms \
		--exclude ".DS_Store" \
		./SublimeText/ ~/Library/Application\ Support/Sublime\ Text*/Packages/User/;
}

if [ "$1" == "--force" -o "$1" == "-f" ]; then
	copySublimeSettings;
else
	read -p "This may overwrite existing files in your Sublime Text user directory. Are you sure? (y/n) " -n 1;
	echo "";
	if [[ $REPLY =~ ^[Yy]$ ]]; then
		copySublimeSettings;
	fi;
fi;
unset copySublimeSettings;
