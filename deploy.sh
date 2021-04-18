#!/bin/sh

cd code-contents

# clean before deploy
for f in $(find . -name Makefile); do make -C $(dirname $f) clean --quiet; done;

FILES="examples timing .vimrc README.txt .gdbinit .bash_aliases"

tar czf - $FILES | ssh -i ../qemu-image/id_rsa -p 5555 steve@localhost "rm -rf $FILES; tar xzf -"

cd ..