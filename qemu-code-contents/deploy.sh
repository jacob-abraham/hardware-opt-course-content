#!/bin/sh

# clean before deploy
for f in $(find . -name Makefile); do make -C $(dirname $f) clean; done;
tar czf - . | ssh -p 5555 steve@localhost "tar xzf -"
