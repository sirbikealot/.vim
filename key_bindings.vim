let mapleader=' '

" Navigation
" Mappings replaced by 'vim-tmux-navigator' plugin
" nnoremap <C-J> <C-W><C-J>
" nnoremap <C-K> <C-W><C-K>
" nnoremap <C-L> <C-W><C-L>
" nnoremap <C-H> <C-W><C-H>
:runtime macros/matchit.vim " Extends '%' match function to if/else, </>, etc.
map vrc :vs ~/.vim/vimrc<cr>
map sc :source ~/.vim/vimrc<cr>

"Formatting and Editing
cnoremap %% <C-R>=expand('%:h').'/'<cr>
map <leader>e   :edit %%<cr>
" Yank from the cursor to the end of the line, to be consistent with C and D.
nnoremap Y y$
" Replace word under cursor globally in file
:nnoremap <leader>s :%s/\<<C-r><C-w>\>/
" Alternative to <Esc> for exiting Insert mode
:inoremap jk <esc>

"Search
" (!) ensures NO jump to first result
cnoreabbrev Ack Ack!
" map backslash to the_silver_searcher (ag)
" This behaves slightly differently with fzf.vim (Fuzzyfinder) installed
" :Ag is defined by fzf.vim, which displays results in a fzf window
" instead of a quicklist
nnoremap \ :Ag<SPACE>

"Ctags
nnoremap <leader>. :CtrlPTag<cr>
" nnoremap <silent> <leader>b :TagbarToggle<cr> " Replaced with mapping to :Buffers

"fzf (Fuzzyfinder)
nnoremap <leader>f :Files<cr>
nnoremap <leader>p :!fzf --preview 'cat {}'<cr>
nnoremap <leader>b :Buffers<cr>
