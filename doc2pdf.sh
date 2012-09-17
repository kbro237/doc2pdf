#!/usr/bin/env bash

textutil -convert html *.doc*

# mdfind -0 -onlyin . "kind:html" | xargs -0 -I {} /System/Library/Printers/Libraries/convert -f {} -o {}.pdf
# mdfind -0 -onlyin . "kind:html" | xargs echo
# find . -name "*.html" -print0 | xargs -0 -I {} /System/Library/Printers/Libraries/convert -f {} -o {}.pdf

# this is almost there, but after the > I can't use the xargs variable anymore. Looks like I'll have to write a real script
find . -name "*.html" -print0 | xargs -0 -I ^ /usr/sbin/cupsfilter ^ > "^.pdf"
