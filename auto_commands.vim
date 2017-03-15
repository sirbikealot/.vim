"Autocommands
au BufRead,BufNewFile {Gemfile,Rakefile,Capfile,*.rake,config.ru} setfiletype ruby
au BufRead,BufNewFile {*.md,*.mkd,*.markdown}               setfiletype markdown
au BufRead,BufNewFile {COMMIT_EDITMSG}                      setfiletype gitcommit
au BufRead,BufNewFile {*.json}                              setfiletype javascript
au BufWritePre        {*.coffee,*.js,*.rb}                  :%s/\s\+$//e
au FileType ruby,eruby let g:rubycomplete_buffer_loading = 1
au FileType ruby,eruby let g:rubycomplete_classes_in_global = 1
au FileType ruby,eruby let g:rubycomplete_rails = 1
