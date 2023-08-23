function! Ddsk()
  vnew
  let l:ddsk = ["ドド", "スコ","スコ", "スコ"]
  while 1
    call append('$', ["ドド", "スコ"][rand()%2])
    if getline(line('$')-3, '$') == ddsk && getline(line('$')-7, line('$')-4) == ddsk && getline(line('$')-11, line('$')-8) == ddsk
      call append('$', "ラブ注入♡")
      break
    endif
  endwhile
endfunction
call Ddsk()
