#!/bin/zsh

while true; do
    commit_message=$(date +"%Y-%m-%d %H:%M")
    git add .
    git commit -m "$commit_message"
    git pull
    git push
    git pull
done

exit 0

