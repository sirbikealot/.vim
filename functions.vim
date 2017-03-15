function! s:RubocopAuto()
  !rubocop -a %
endfunction
comman! -nargs=0 RubocopAuto call s:RubocopAuto()
