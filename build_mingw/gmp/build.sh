#!/bin/bash

PWD=`pwd`
TOOLSDIR=$PWD/../../tools_mingw
SRCDIR=../../source

$SRCDIR/gmp-5.1.3/configure                 \
        --prefix=$TOOLSDIR/gmp              \
        --enable-cxx

make -j8
make install
