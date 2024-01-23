#!/bin/sh -e
# dbglogger.sh by Naomi Peori (naomi@peori.ca)

## Download the source code.
wget --no-check-certificate https://github.com/StrawFox64/dbglogger/tarball/master -O dbglogger.tar.gz

## Create the build directory.
rm -Rf dbglogger && mkdir dbglogger

## Unpack the source code.
tar --strip-components=1 --directory=dbglogger -xvzf dbglogger.tar.gz

## Open directory.
cd dbglogger

## Compile and install.
${MAKE:-make} install
