" -- NERDTree
" call dein#add('scrooloose/nerdtree')
let NERDTreeShowBookmarks = 1
let NERDTreeChDirMode = 2
" nnoremap <leader><C-d> :NERDTreeToggle<CR>

let NERDTreeQuitOnOpen = 1

let g:gitgutter_map_keys = 0

nnoremap <C-p><C-t> :NERDTreeToggle<CR>
nnoremap <C-p><C-f> :Denite file_rec<CR>

