#!/bin/sh

# clean before deploy
for f in $(find . -name Makefile); do make -C $(dirname $f) clean; done;

FILES="examples timing .vimrc README.txt"

tar czf - $FILES | ssh -p 5555 steve@localhost "rm -rf $FILES; tar xzf -"
