#!/bin/sh

if [ "x$JHBUILD_PREFIX" = x ]; then
    echo "JHBUILD_PREFIX must be set."
    exit 1
fi

for f in `find etc -type f`; do
    mkdir -p $JHBUILD_PREFIX/`dirname $f`
    cat $f | sed -e "s,/usr/share,$JHBUILD_PREFIX/share,g" \
                 -e "s,/etc,$JHBUILD_PREFIX/etc,g" > $JHBUILD_PREFIX/$f
done

for f in `find share -type f`; do
    mkdir -p $JHBUILD_PREFIX/`dirname $f`
    cat $f | sed -e "s,/usr/share,$JHBUILD_PREFIX/share,g" \
                 -e "s,/etc,$JHBUILD_PREFIX/etc,g" > $JHBUILD_PREFIX/$f
done
