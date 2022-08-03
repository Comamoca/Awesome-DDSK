vim9script
# Author: @kat0h
# License: MIT

var i = 0
while i != 2184
    i = and(i * 2 + rand() % 2, 4095)
    echon ['ドド', 'スコ'][and(1, i) ? 0 : 1]
endwhile
echon 'ラブ注入♡'