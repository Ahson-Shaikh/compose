#!/bin/bash

if [ ! -d "./repo" ]; then
    git clone --depth 1 --branch preview --single-branch https://github.com/makeplane/plane.git repo
else
    cd repo
    git pull
    cd ..
fi

rsync -av --exclude='.git' ./repo/  ./code/
rm -rf ./repo


