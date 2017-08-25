#!/bin/bash

# Build script which keeps master in sync with sources

# Github's version of Jekyll doens't like my plugins so what we're doing is
# making a new build and then pushing code to master everytime we make a
# change to sources

git commit -m "$*" && \
LAST_COMMIT=`git rev-parse HEAD` && \
git push origin sources && \
bundle exec jekyll build && \
(cd _site/ && \
 touch .nojekyll && \
 git add -A && \
 git commit -m "Build of master/$LAST_COMMIT" \
 && git push origin master)
