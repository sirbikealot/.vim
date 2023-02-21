"Source
source ~/.vim/vundle.vim
source ~/.vim/auto_commands.vim
source ~/.vim/key_bindings.vim
source ~/.vim/functions.vim

"General
scriptencoding utf-8
set t_Co=256
set enc=utf-8
set splitbelow
set splitright
set incsearch
set ignorecase
set smartcase
set nocursorline
set number
set rnu " Relative numbering
set vb t_vb=
set autoread
set nobackup
set nowritebackup
set noswapfile
set hidden
set clipboard=unnamed
set directory=/tmp/
set formatoptions-=o " Do not automatically insert the current comment leader after hitting 'o' or 'O' in Normal mode.
set formatoptions-=r " Do not automatically insert a comment leader after an enter
set mouse=a
set updatetime=100 " Recommended for vim-gitgutter
" set tags=~/workspaces/src/github.com/pharos-ei/ams/tags,~/workspaces/src/github.com/pharos-ei/ams/tmp/tags
" set tags=./tags,tags
setlocal spell spelllang=en_us

"Tabs
set tabstop=2
set shiftwidth=2
set expandtab

"Insert Completion
set completeopt=menuone,preview
set infercase " Ignore case on insert completion

"Colors
colorscheme peachpuff
set background=light

"Statusline
set laststatus=2                              " always show the status bar
set statusline=%f                             " filename
" set statusline+=%{fugitive#statusline()}      " git branch
" set statusline+=\ Func:%{cfi#get_func_name()} " current function name
set statusline+=%=                            " switch to the right
" set statusline+=\ [%b][0x%B]                  " [character value],[same, in hexadecimal]
set statusline+=\ Col:%v                      " column number
set statusline+=\ Buf:#%n                     " buffer number

"FuzzyFind (fzf)
set rtp+=/usr/local/opt/fzf
"results window key bindings open result in split window accordingly:
"https://github.com/junegunn/fzf/commit/2069bbc8b54fa77384e42274ee15af7b397af884#diff-0bfe3bc329555ec86b9677a27b1330b410e1071b4d5b8c5189743a2af74186e9R58
function! s:build_quickfix_list(lines)
   call setqflist(map(copy(a:lines), '{ "filename": v:val }'))
   copen
   cc
 endfunction
let g:fzf_action = {
  \ 'ctrl-q': function('s:build_quickfix_list'),
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-s': 'split',
  \ 'ctrl-v': 'vsplit' }

"Command-T
let g:CommandTWildIgnore=&wildignore .
  \ ",**/.git/*" .
  \ ",**/bower_components/*" .
  \ ",**/node_modules/*" .
  \ ",**/tmp/*"

"Omnicompletion, Keyword Completion
let g:SuperTabDefaultCompletionType = "<c-x><c-o>" " Omnicomplete

"Syntastic
" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
" let g:syntastic_enable_signs=1
" let g:syntastic_ruby_checkers = ['rubocop', 'mri']
" let g:statline_syntastic = 0 " Makes warningmsg in statusline work

"Elm
let g:elm_setup_keybindings = 0
" let g:syntastic_always_poplulate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
" let g:elm_syntastic_show_warnings = 1
let g:elm_format_autosave = 1
" let g:syntastic_elm_checkers = ['elm_make']

"ALE
let g:ale_linters = {
      \ 'ruby' : ['standardrb', 'rubocop']
      \}
" let g:ale_linters = {
"       \ 'elm': ['elm_ls'] ,
"       \ 'ruby' : ['standardrb', 'rubocop']
"       \}

let g:ale_fixers = {
      \ 'ruby' : ['standardrb', 'rubocop'] ,
      \ 'javascript' : ['eslint'] ,
      \}
" let g:ale_fixers = {
"       \ 'ruby' : ['standardrb', 'rubocop'] ,
"       \ 'javascript' : ['eslint'] ,
"       \ 'elm' : [ 'elm-format' ]
"       \}

" let g:ale_fix_on_save = 1

"Vroom
"let g:vroom_clear_screen = 0
"
"CoC
set signcolumn=yes

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gr <Plug>(coc-references)
" nmap <silent> gy <Plug>(coc-type-definition)
" nmap <silent> gi <Plug>(coc-implementation)

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)
