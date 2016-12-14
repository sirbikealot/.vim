"Autocommands
au BufRead,BufNewFile {Gemfile,Rakefile,Capfile,*.rake,config.ru} setfiletype ruby
au BufRead,BufNewFile {*.md,*.mkd,*.markdown}               setfiletype markdown
au BufRead,BufNewFile {COMMIT_EDITMSG}                      setfiletype gitcommit
au BufRead,BufNewFile {*.json}                              setfiletype javascript
au BufWritePre        {*.coffee,*.js,*.rb}                  :%s/\s\+$//e
