#/bin/sh
# Simple scripts for helping with creating new verions of app
set -xe
echo "Creating new release "$1
git checkout -b release-$1
git tag -a v$1 -m "v$1"
#git commit -a -m "New release "$1
git push origin release-$1
git push origin v$1
git checkout master
echo "Done"

