#!/bin/bash

CURRENT_YEAR=$(date +"%Y")

if [ -f "LICENSE" ]; then
    sed -i "s/[0-9]\{4\}/$CURRENT_YEAR/g" LICENSE
    
    git config --global user.name "github-actions[bot]"
    git config --global user.email "github-actions[bot]@users.noreply.github.com"

    git remote set-url origin https://x-access-token:${GITHUB_TOKEN}@github.com/${GITHUB_REPOSITORY}.git

    git add LICENSE
    if git diff --cached --quiet; then
        echo "No changes to commit"
    else
        git commit -m "Update license year to $CURRENT_YEAR"
        git push
    fi
else
    echo "LICENSE file not found"
fi
