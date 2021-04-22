#!/bin/sh

make -B
taskset -c 0 ./saxpy.out
