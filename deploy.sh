#!/bin/bash

echo -e "\033[0;32mDeploying updates to Github...\033[0m"

# delete public folder
rm -rf public/*

# Build the project.
hugo

# Add changes to git.
git add -A

# Commit changes.
msg="rebuilding site `date`"
if [ $# -eq 1 ]
  then msg="$1"
fi
git commit -m "$msg"

# Push source and build repos.
git push origin master

# copy to aws s3

aws s3 sync ~/Github/homepage/public s3://hakyimlab.org --delete



##git subtree push --prefix=public https://github.com/hakyimlab/hakyimlab.github.io.git public

#git submodule add https://github.com/hakyimlab/hakyimlab.github.io.git public
