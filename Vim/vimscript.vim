" Author: @kat0h
" License: MIT

let i=0
while i!=2184
    let i=and(i*2+rand()%2,4095)
    echon ['ドド','スコ'][!and(1,i)]
endwhile
echon 'ラブ注入♡'