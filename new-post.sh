#!/usr/bin/env bash
# Script to create new post.
#
# has to be run from where it is created.
# example of usage.
# ./new-post.sh subfolder/nameofpost.md
#
# cd in to hugo blog root directory.
if [[ -n $1 ]]; then
	cd blog
# run hugo new post with arg passed from command line.
	hugo new post/$1
# back up to git repo root.
	micro content/post/$1
	cd ..
	exit
fi
# Usage printed if no arg passed
echo "
Hugo blog new post template
Usage:
./new-post.sh [subfolder] / [filename.md]
Example:
./new-post.sh rust/tips.md
"
