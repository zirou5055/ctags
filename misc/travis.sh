#!/bin/sh

if [ "$TARGET" = "Unix" ]; then
    make -j2
    make check TRAVIS=1
    make distclean
elif [ "$TARGET" = "Mingw32" ]; then
    make -f mk_mingw.mak -j2
fi
