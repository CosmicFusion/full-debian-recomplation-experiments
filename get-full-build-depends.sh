#! /bin/bash
apt-rdepends --build-depends "$1" > "$1"-full-build-depends.txt.tmp
cat "$1"-full-build-depends.txt.tmp | grep Build-Depends | cut -f2 -d: | cut -f2 -d" " > "$1"-full-build-depends.txt
rm -rf "$1"-full-build-depends.txt.tmp
