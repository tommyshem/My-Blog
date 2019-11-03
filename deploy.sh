##!/bin/bash

# function for checking commands are installed on your system
function assertInstalled() {
   	 for var in "$@"; do
        if ! type $var &> /dev/null; then
            echo "The script can not continue. Please Install -> $var"
            exit 1
        fi
    done
}

# Check if hugo and git installed
assertInstalled hugo git
echo -e "\033[0;32m\nRun Hugo to generate website...\033[0m"
cd blog
# Build the project.
hugo -t hugo-icarus-theme

echo -e "\033[0;32m\nDeploying updates to GitHub...\033[0m"
# Go To Public folder
cd public
# Add changes to git.
git add '.'
# Commit changes to git.
msg="rebuilding site `date`"
if [ $# -eq 1 ]
  then msg="$1"
fi
git commit -m "$msg"
# Push public folder which is the website generated code to github.
git push
# --force
# Go back up to the project root directory
cd ../..

# This will update all submodules changed and the main repo
# they have to be commited first.
#git push --recurse-submodules=on-demand