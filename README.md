My `doc2pdf` will take .doc and .docx files, and using a couple programs including with OS X 10.8, makes PDF's from them.

Prior to 10.8 or maybe 10.7, the PDF conversion was done with a program found at `/System/Library/Printers/Libraries/convert`. Now it's done with `/usr/sbin/cupsfilter` and the options are a bit different.

It will:

- find the crappy doc(x) files and use `textutil` to make html files
- make sure they stand out with a `.temp.html` name.
- take those html files and 'print' them to PDF
- remove the those temp html files.
