#!/usr/bin/bash

# Install Pathogen
mkdir -p ~/.vim/autoload ~/.vim/bundle ~/.vim/colors
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

#Install packages
cd ~/.vim/bundle

while read package do
	git clone $package
done < vimPackages.txt


