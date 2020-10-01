#!/usr/bin/env bash

# Capture current directory
ogdir=$(pwd)
# Make a scratch directory
Scratch=$(mktemp -d)
# Extract the content of input dir to scartch dir
tar xf "$1" -C "$Scratch"
# move to scrath dir
cd "$Scratch" || exit
# capture all files with 'DELETE ME'
files=$(grep -Rl 'DELETE ME!')
# Remove those files
for file in ${files}
do
	rm "$file"
done
# Extract cleaned files back to original dir with the basename of input dir
tar -czf "$ogdir/cleaned_$1" "$(basename "$1" .tgz)"

rm -r "$Scratch"