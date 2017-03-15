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
map ,, :w<cr>
map qq :q!<cr>
" Add line above without moving cursor
" nmap <S-K> O<Esc>j
" Add line below without moving cursor
" nmap <S-J> o<Esc>k
" Yank from the cursor to the end of the line, to be consistent with C and D.
nnoremap Y y$
" Replace word under cursor globally in file
:nnoremap <leader>s :%s/\<<C-r><C-w>\>/
" Alternative to <Esc> for exiting Insert mode
:inoremap jk <esc>
" Disable normal <Esc> function to accelerate adoption of above remap
" :inoremap <esc> <nop>

"Ctags
nnoremap <leader>. :CtrlPTag<cr>
nnoremap <silent> <leader>b :TagbarToggle<cr>

"Command-T
map <leader>vv  :CommandTFlush<cr>\|:CommandT app/views<cr>
map <leader>cc  :CommandTFlush<cr>\|:CommandT app/controllers<cr>
map <leader>mm  :CommandTFlush<cr>\|:CommandT app/models<cr>
map <leader>js  :CommandTFlush<cr>\|:CommandT app/assets/javascripts<cr>
map <leader>css :CommandTFlush<cr>\|:CommandT app/assets/stylesheets<cr>
map <leader>rs  :CommandTFlush<cr>\|:CommandT spec<cr>
map <leader>ss  :CommandTFlush<cr>\|:CommandT app/services<cr>
map <leader>gg  :topleft 75 :vs Gemfile<cr>
map <leader>rr  :topleft 75 :vs config/routes.rb<cr>
map <leader>app :topleft 75 :vs config/application.rb<cr>
map <leader>sd  :topleft 75 :vs db/seeds.rb<cr>
map <leader>mig :CommandTFlush<cr>\|:CommandT db/migrate<cr>
map ,t :w\|:!rspec spec
map ,r :w\|:!ruby %:t<cr>
map ,t :w\|:!rspec %:p<cr>
