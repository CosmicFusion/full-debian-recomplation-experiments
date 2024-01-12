#! /bin/python3
import apt
cache = apt.Cache()

for pkg in cache:
        print(pkg.name)
