#!/bin/sh

make -B TARGET=reg.out

for f in $(ls *.out | sort); do echo "$f: "; ./$f; done;
