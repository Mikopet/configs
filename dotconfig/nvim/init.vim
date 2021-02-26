if filereadable(expand("~/.config/nvim/plugins.vim"))
  source ~/.config/nvim/plugins.vim
endif

if filereadable(expand("~/.config/nvim/defaults.vim"))
  source ~/.config/nvim/defaults.vim
endif

if filereadable(expand("~/.config/nvim/coc.vim"))
  source ~/.config/nvim/coc.vim
endif

if filereadable(expand("~/.config/nvim/test.vim"))
  source ~/.config/nvim/test.vim
endif

if filereadable(expand("~/.config/nvim/fzf.vim"))
  source ~/.config/nvim/fzf.vim
endif

autocmd VimEnter * NERDTree
autocmd BufEnter * NERDTreeMirror
autocmd BufEnter * if bufname('#') =~ 'NERD_tree' && bufname('%') !~ 'NERD_tree' && winnr('$') > 1 | b# | exe "normal! \<c-w>\<c-w>" | :blast | endif

nmap <silent> <C-t> :NERDTreeToggle<CR>
nmap <silent> <F2> :NERDTreeFind<CR>

nnoremap <silent> <Tab> :bnext<CR>
nnoremap <silent> <S-Tab> :bprevious<CR>

nnoremap <silent> <leader>vr :e $HOME/.config/nvim/init.vim<CR>
nnoremap <silent> <leader>vrp :e $HOME/.config/nvim/plugins.vim<CR>

nnoremap <silent><leader>h :wincmd h<CR>
nnoremap <silent><leader>k :wincmd k<CR>
nnoremap <silent><leader>j :wincmd j<CR>
nnoremap <silent><leader>l :wincmd l<CR>

nnoremap <leader>q :Bdelete<CR>

