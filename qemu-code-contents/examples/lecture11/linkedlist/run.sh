#!/bin/sh

make -B CFLAGS="-D_PACKED_" TARGET=packed.out
make -B CFLAGS="-D_UNPACKED_" TARGET=unpacked.out
make -B CFLAGS="-D_UNPACKED_RAND_" TARGET=unpacked_rand.out

./packed.out
./unpacked.out 4
./unpacked.out 64
./unpacked.out 128
./unpacked.out 256
./unpacked_rand.out