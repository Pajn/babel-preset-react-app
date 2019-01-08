#!/bin/sh

for i in *.js; do
    [ -f "$i" ] || break
    git diff -r upstream/master -- packages/babel-preset-react-app/$i -- $i
done