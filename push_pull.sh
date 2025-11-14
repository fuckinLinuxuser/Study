#!/bin/zsh

commit_message=$(date +"%Y-%m-%d %H:%M")
git add .
git commit -m "$commit_message"
git pull
git push
git pull

if [ -z "$(git status --porcelain)" ]; then
    exit 0
else
    git merge
fi
