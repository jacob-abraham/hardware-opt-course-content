#!/bin/sh

make -B TARGET=reg_cla.out
make -B CFLAGS="-fopenmp -D_WITH_OPENMP_" TARGET=omp_cla.out
make -B CC=gcc LD=gcc TARGET=reg_gcc.out
make -B CC=gcc LD=gcc CFLAGS="-fopenmp -D_WITH_OPENMP_" TARGET=omp_gcc.out

for f in $(ls *.out | sort); do echo -n "$f: "; ./$f; done;
