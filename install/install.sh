#!/bin/bash

basedir=$HOME/Projects/dotfiles/
installdir=$HOME/tes/
timestamp=$(date +%s)
tempdir=$HOME/dotfiles$timestamp
gitrepo=git://github.com/mgechev/dotfiles.git

echo "git is pulling your files"

#Creating a temporary directory for processing the files
mkdir $tempdir
cd $tempdir

#Getting the dotfiles
git clone $gitrepo
cd dotfiles/files

#Move each file from the directory to the install dir with dot prefix
for file in `ls`; do
    mv $file "$installdir.$file"
done;

#Remove the temporary dir
rm -rf $tempdir
