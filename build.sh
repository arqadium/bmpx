#!/bin/sh
#

if [ "$1" == 'lib' ]; then
    mkdir -p build
    dmd -fPIC -betterC -O -release -lib -I=src src/bmpx/bmpx.d
elif [ "$1" == 'cli' ]; then
    mkdir -p build
    dmd -fPIC -O -release -I=src src/bmpx/bmpx.d src/mkbmpx/main.d
else
    echo 'Invalid target; use either ‘lib’ or ‘cli’'; exit -1
fi
