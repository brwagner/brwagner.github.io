#!/bin/bash

git commit -m \""$*"\" && \
LAST_COMMIT=`git rev-parse HEAD` && \
git push origin soruces && \
bundle exec jekyll build && \
(cd _site/ && touch .nojekyll && git commit -m "Build of master/$LAST_COMMIT" && git push origin master)
