#!/bin/sh
git pull
git add --all
commit=$(date +%Y%M%d-%H%m%S)
git commit -m "Autoupdate: $commit"
git push -u origin main
