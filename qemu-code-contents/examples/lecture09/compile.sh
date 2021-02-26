#1/bin/sh
for f in $(find . -name Makefile); do make -C $(dirname $f); done;
