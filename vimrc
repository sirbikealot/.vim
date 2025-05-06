" Source
source ~/.vim/auto_commands.vim
source ~/.vim/key_bindings.vim
source ~/.vim/functions.vim

" NOTES
" :[Ex]plore,:[Vex]plore, :[Sex]plore -> netrw
"     % create new file
"     d create new directory
"     R rename file/directory
"     D delete file/directory
"
" :'<,'>normal A,
"     appends the range with a comma
"
" :'<,'>!cat | json_pp
"     pretty-prints json. Sub '<,'> with % to capture full page
"
" Abolish's case mutating algorithms can be applied to the word under the cursor
" using the cr mapping (mnemonic: CoeRce) followed by one of the following
" characters:
"
"   c:       camelCase
"   p:       PascalCase
"   m:       MixedCase (aka PascalCase)
"   _:       snake_case
"   s:       snake_case
"   u:       SNAKE_UPPERCASE
"   U:       SNAKE_UPPERCASE
"   k:       kebab-case (not usually reversible; see |abolish-coercion-reversible|)
"   -:       dash-case (aka kebab-case)
"   .:       dot.case (not usually reversible; see |abolish-coercion-reversible|)

" General
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

" Tabs
set tabstop=2
set shiftwidth=2
set expandtab

" Insert Completion
set completeopt=menuone,preview
set infercase " Ignore case on insert completion

" Colors
" colorscheme gruvbox
" set background=light

" colorscheme bluewery-light
" let g:lightline = { 'colorscheme': 'bluewery_light' }

" colorscheme bluewery
" let g:lightline = { 'colorscheme': 'bluewery' }

" colorscheme peachpuff


" Statusline
set laststatus=2                              " always show the status bar
set statusline=%f                             " filename
" set statusline+=%{fugitive#statusline()}      " git branch
" set statusline+=\ Func:%{cfi#get_func_name()} " current function name
set statusline+=%=                            " switch to the right
" set statusline+=\ [%b][0x%B]                  " [character value],[same, in hexadecimal]
set statusline+=\ Col:%v                      " column number
set statusline+=\ Buf:#%n                     " buffer number

" FuzzyFind (fzf)
set rtp+=/usr/local/opt/fzf
" results window key bindings open result in split window accordingly:
" https://github.com/junegunn/fzf/commit/2069bbc8b54fa77384e42274ee15af7b397af884#diff-0bfe3bc329555ec86b9677a27b1330b410e1071b4d5b8c5189743a2af74186e9R58
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

" includes hidden (dot) files (except .git) in fzf searches
let $FZF_DEFAULT_COMMAND = 'ag --hidden --ignore .git -g ""'

" Omnicompletion, Keyword Completion
" let g:SuperTabDefaultCompletionType = "<c-x><c-o>" " Omnicomplete

" Elm
let g:elm_setup_keybindings = 0
let g:elm_format_autosave = 1

" ALE
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

" Vroom
"let g:vroom_clear_screen = 0
"
" CoC
set signcolumn=yes

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gr <Plug>(coc-references)
" List code actions at current line
nmap <silent> ga <Plug>(coc-codeaction-line)
" Apply AutoFix to problem on the current line.
nmap <silent> qf <Plug>(coc-fix-current)
" nmap <silent> gy <Plug>(coc-type-definition)
" nmap <silent> gi <Plug>(coc-implementation)

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Plugins
call plug#begin()
Plug 'tpope/vim-rails'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-fugitive'
Plug 'ervandew/supertab'
" Plug 'mileszs/ack.vim' "
Plug 'tomtom/tcomment_vim'
" Plug 'ctrlpvim/ctrlp.vim' " tag searching
" Plug 'majutsushi/tagbar' " tag searching
Plug 'christoomey/vim-tmux-navigator'
Plug 'tpope/vim-surround'
Plug 'godlygeek/tabular' " Aligns text within a block
Plug 'tpope/vim-unimpaired' " Bracket navigation through file structure
Plug 'tpope/vim-repeat' " Enable repeating supported plugin maps with '.'
Plug 'vim-airline/vim-airline'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-gitgutter'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'w0rp/ale'
" Plug 'kevinoid/vim-jsonc'
Plug 'relastle/bluewery.vim' " a vim editor color

call plug#end()
