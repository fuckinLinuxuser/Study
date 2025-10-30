#!/bin/zsh

if true; then
    commit_message=$(date +"%Y-%m-%d %H:%M")
    git add .
    git commit -m "$commit_message"
    git pull
    git push
    git pull
fi

else
    git merge
fi
