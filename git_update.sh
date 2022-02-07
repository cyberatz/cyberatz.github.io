#!/bin/sh
export USER=pid
export fileloc=/Users/pid/cyberatz.github.io
export PATH=/usr/gnu/bin:/usr/local/bin:/bin:/usr/bin:.
set -xe

cd $fileloc
/usr/bin/git pull
/usr/bin/git add --all

commit=$(date +%Y%M%d-%H%m%S)

/usr/bin/git commit -m "Autoupdate: $commit"
/usr/bin/git push -u origin main



# For submodules:
# Install: git submodule add https://github.com/nanxiaobei/hugo-paper themes/paper
# The run: git submodule update --init --recursive
