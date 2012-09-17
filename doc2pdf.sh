#!/usr/bin/env bash

for crap in *.doc*
do
    textutil -convert html -output "$crap.temp.html" "$crap"
done

for temp in *.temp.html
do
    /usr/sbin/cupsfilter "$temp" > "`basename $temp | sed 's/\.temp\.html//'`.pdf"
    rm "$temp"
done
