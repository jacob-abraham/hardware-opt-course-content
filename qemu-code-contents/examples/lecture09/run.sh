#!/bin/sh
for f in $(find . -name Makefile); do make -C $(dirname $f) -B TARGET=cntsetbits_clang.out CFLAGS="-mpopcnt"; done;
for f in $(find . -name Makefile); do make -C $(dirname $f) -B CC=gcc LD=gcc TARGET=cntsetbits_gcc.out CFLAGS="-mpopcnt"; done;

for f in $(find . -name *.out | sort); do echo $f; $f; done;