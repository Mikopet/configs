" these "Ctrl mappings" work well when Caps Lock is mapped to Ctrl
nnoremap <silent><leader>tn :TestNearest<CR>
nnoremap <silent><leader>tf :TestFile<CR>
nnoremap <silent><leader>ts :TestSuite<CR>
nnoremap <silent><leader>tl :TestLast<CR>
nnoremap <silent><leader>tg :TestVisit<CR>

let test#strategy = "neovim"

if has('nvim')
  tmap <C-o> <C-\><C-n>
endif

let test#neovim#term_position = "topleft"
let test#neovim#term_position = "vert"
let test#neovim#term_position = "vert botright 60"

