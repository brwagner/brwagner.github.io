#!/bin/bash

# Build script for things

git commit -m "$*" && \
LAST_COMMIT=`git rev-parse HEAD`