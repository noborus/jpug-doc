#!/bin/bash

rm -rf out || exit 0;
mkdir out;

cd out

git init
git config user.name "Noboru Saito"
git config user.email "noborus@netlab.jp"

git remote add upstream "https://$GH_TOKEN@github.com/noborus/noborus.gihub.io.git"
git fetch upstream
cp -r ../doc/src/sgml/html .
git add .
git commit -m "Deploy to GitHub Pages"

git push --force --quiet "https://$GH_TOKEN@github.com/noborus/noborus.gihub.io.git" master
