#!/bin/sh
git pull
git add --all
commit=$(date +%Y%M%d-%H%m%S)
git commit -m "Autoupdate: $commit"
git push -u origin main



# For submodules:
# Install: git submodule add https://github.com/nanxiaobei/hugo-paper themes/paper
# The run: git submodule update --init --recursive
