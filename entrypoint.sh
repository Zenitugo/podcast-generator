#!/bin/bash

echo "==================================="

git config --global user.name "${GITHUB_ACTOR}"
git config --global user.email "${INPUT_EMAIL}"
git config --global --add safe.directory /github/workspace


python3 /usr/bin/rss-feed.py


git add -A && git commit -m 'python script generator'
git push --set-upstream origin main

echo "==================================="
