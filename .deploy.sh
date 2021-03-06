#!/bin/bash
# See https://medium.com/@nthgergo/publishing-gh-pages-with-travis-ci-53a8270e87db

#set -o errexit # put back
SOURCE_BRANCH="master"
TARGET_BRANCH="gh-pages"

# Save some useful information
#SHA=`git rev-parse --verify HEAD`
GH_REPO="@github.com/microbiome/microbiome.git"
FULL_REPO="https://$GH_TOKEN$GH_REPO"

# Pull requests and commits to other branches shouldn't try to deploy, just build to verify
if [ "$TRAVIS_PULL_REQUEST" != "false" -o "$TRAVIS_BRANCH" != "$SOURCE_BRANCH" ]; then
    echo "Skipping deploy; just doing a build."
    exit 0
fi

rm -rf public # ; || exit 0;
mkdir public

# config
git config --global user.email "nobody@nobody.org"
git config --global user.name "Travis CI"

# Unzip the newly created R package 
tar -zxvf *.tar.gz

# Deploy
cd public
git init

# Copy the vignettes from the newly generated package in here
cp ../microbiome/inst/doc/*.html .

# Add to git and deploy
git add *.html
git add files*.txt
git commit -a -m "Deploy to Github Pages"
git push --force --quiet $FULL_REPO $SOURCE_BRANCH:$TARGET_BRANCH # > /dev/null 2>&1

# --------------------------------

# R CMD BATCH ../vignettes/build.R
#function doCompile {
#  ./compile.sh
#}
# doCompile
#
#for files in '../microbiome/vignettes/*.html'; do
#        cp $files .
#done



