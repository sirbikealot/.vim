"Source
source ~/.vim/vundle.vim
source ~/.vim/auto_commands.vim
source ~/.vim/key_bindings.vim

"General
scriptencoding utf-8
set enc=utf-8
set noswapfile
set splitbelow
set splitright
set incsearch
set ignorecase
set smartcase
set nocursorline
set number
set rnu " Relative numbering
set vb t_vb=
set clipboard=unnamed
set directory=/tmp/
set formatoptions-=o " Do not automatically insert the current comment leader after hitting 'o' or 'O' in Normal mode.
set formatoptions-=r " Do not automatically insert a comment leader after an enter
setlocal spell spelllang=en_us

"Tabs
set tabstop=2
set shiftwidth=2
set expandtab

"Colors
colorscheme peachpuff
set background=light

"Statusline
set laststatus=2                              " always show the status bar
set statusline=%f                             " filename
set statusline+=%{fugitive#statusline()}      " git branch
set statusline+=\ Func:%{cfi#get_func_name()} " current function name
set statusline+=%=                            " switch to the right
set statusline+=\ [%b][0x%B]                  " [character value],[same, in hexadecimal]
set statusline+=\ Col:%v                      " column number
set statusline+=\ Buf:#%n                     " buffer number

"Command-T
let g:CommandTWildIgnore=&wildignore .
  \ ",**/.git/*" .
  \ ",**/bower_components/*" .
  \ ",**/node_modules/*" .
  \ ",**/tmp/*"

"Omnicompletion, Keyword Completion
let g:SuperTabDefaultCompletionType = "<c-x><c-o>" " Omnicomplete

"Syntastic
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_enable_signs=1
" let g:statline_syntastic = 0 " Makes warningmsg in statusline work

"Elm
let g:elm_setup_keybindings = 0
let g:elm_syntastic_show_warnings = 1
let g:elm_format_autosave = 1

"Vroom
"let g:vroom_clear_screen = 0
