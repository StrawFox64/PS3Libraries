#!/bin/sh -e
# sdl2_psl1ght.sh by Naomi Peori (naomi@peori.ca)

## Download the source code.
wget --no-check-certificate https://github.com/StrawFox64/SDL2PSL1GHT/tarball/master -O sdl2_psl1ght.tar.gz

## Create the build directory.
rm -Rf sdl2_psl1ght && mkdir sdl2_psl1ght

## Unpack the source code.
tar --strip-components=1 --directory=sdl2_psl1ght -xvzf sdl2_psl1ght.tar.gz

## Open directory.
cd sdl2_psl1ght

## Compile and install.
./script.sh && ${MAKE:-make} && ${MAKE:-make} install
