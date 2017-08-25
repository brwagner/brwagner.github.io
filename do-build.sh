#!/bin/bash

git commit -m \""$@"\" && \
LAST_COMMIT=`git rev-parse HEAD` && \
git push origin master && \
bundle exec jekyll build && \
cd _site/ && touch .nojekyll && git commit -m "Build of master/$LAST_COMMIT"

