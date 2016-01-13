#!/bin/bash

PWD=`pwd`
TOOLSDIR=$PWD/../../tools_mingw
SRCDIR=../../source

$SRCDIR/mpc-1.0.3/configure                 \
        --prefix=$TOOLSDIR/mpc              \
        --with-gmp=$TOOLSDIR/gmp            \
        --with-mpfr=$TOOLSDIR/mpfr          \
        --enable-static                     \
        --disable-shared

make -j8
make install
