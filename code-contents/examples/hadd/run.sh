#!/bin/sh

make -B CFLAGS="-DBENCHMARK" ASFLAGS="-dBENCHMARK" TARGET=bench.out
make -B TARGET=accuracy.out

for f in $(ls *.out | sort); do echo "$f: "; ./$f; done;
