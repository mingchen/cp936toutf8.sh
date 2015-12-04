cp936toutf8.sh
==============

Convert a cp936 encoded file to utf-8 encoded, it will replace the original file.
mainly used for convert windows txt files encoded with cp936 (simplified chinese encoding).


cp936
-----

Code page 936 (CP936) is Microsoft's character encoding for simplified Chinese,
one of the four DBCSs for East Asian languages. Originally it was identical to GB 2312,
and expanded to cover most part of GBK with the release of Windows 95.
It was superseded by code page 54936 (GB 18030), but as of 2014 was still prevalent in use.
The Windows command prompt uses CP936 as the default code page for simplified Chinese installations,
although part of the GB 18030 was made mandatory for all software products sold in China.


Usage
-----

    cp936toutf8.sh file1 file2 ...


Examples
--------

    cp936toutf8.sh foo.txt
    cp936toutf8.sh foo.txt bar.txt
    cp936toutf8.sh *.txt
    

References
----------

* https://en.wikipedia.org/wiki/Code_page_936

