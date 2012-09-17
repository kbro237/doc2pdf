#!/usr/bin/env bash
# This script will take .doc and .docx files, and using a couple programs including with OS X 10.8, makes PDF's from them.
# Prior to 10.8 or maybe 10.7, the PDF conversion was done with a program found at /System/Library/Printers/Libraries/convert. Now it's done with /usr/sbin/cupsfilter and the options are a bit different.

# Find the crappy doc(x) files and use textutil to make html files. And make sure they stand out with a .temp.html name.
for crap in *.doc*
do
    textutil -convert html -output "$crap.temp.html" "$crap"
done

# Take those html files and 'print' them to PDF. (Also, clean up the filename a bit.) Then remove the those temp html files.
for temp in *.temp.html
do
    /usr/sbin/cupsfilter "$temp" > "`basename $temp | sed 's/\.temp\.html//'`.pdf"
    rm "$temp"
done
