#! /bin/bash
apt-rdepends --build-depends --follow=DEPENDS "$1" > "$1"-build-depends.txt.tmp
cat "$1"-build-depends.txt.tmp | grep Build-Depends | cut -f2 -d: | cut -f2 -d" " > "$1"-build-depends.txt
rm -rf "$1"-build-depends.txt.tmp
