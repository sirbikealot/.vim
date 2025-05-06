function! s:RubocopAuto()
  !rubocop -a %
endfunction
comman! -nargs=0 RubocopAuto call s:RubocopAuto()

" Allows passing options to fzf's implementation of silever_searcher :Ag
" See https://github.com/junegunn/fzf.vim/issues/92#issuecomment-191248596
" ex: :Ag Submission::Mailer -C (context)
" ex: :Ag Submission::Mailer -Q (literal match)
" ex: :Ag Submission::Mailer -w (only match whole words)
" (I added the '--hidden' option to ag_opts,
"   otherwise will not search dotfiles (e.g. '.rubocop.yml'))
function! s:ag_with_opts(arg, bang)
  let tokens = split(a:arg)
  let ag_opts = '--hidden ' . join(filter(copy(tokens), 'v:val =~ "^-"'))
  let query =   join(filter(copy(tokens), 'v:val !~ "^-"'))
  call fzf#vim#ag(query, ag_opts, a:bang ? {} : {'down': '40%'})
endfunction

autocmd VimEnter * command! -nargs=* -bang Ag call s:ag_with_opts(<q-args>, <bang>0)
" 2023-11-07 Chris Kraybill provided this variation, but it does not support delimiters like \b, so you can't match on a word that starts/ends a certain way. And it doesn't support regexp, e.g. \[A-Z\]arketParticipant
" command! -bang -nargs=+ -complete=dir Ag call fzf#vim#ag_raw(<q-args>, fzf#vim#with_preview(), <bang>0)
