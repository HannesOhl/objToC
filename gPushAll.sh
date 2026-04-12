#!/bin/bash
# this script is probably only useful for myself. I use it to push main repo
# and subtrees simultaneously

set -e

eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519

git push
git subtree split --prefix=tools/lalg | xargs -I {} git push lalg-remote {}:main
git subtree split --prefix=tools/objToC | xargs -I {} git push objToC-remote {}:main
git subtree split --prefix=tools/pngToBin | xargs -I {} git push pngToBin-remote {}:main
