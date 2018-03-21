" lilydjwg/fcitx.vim
let $fcitx_socket='/tmp/fcitx-socket-:0'

" scrooloose/nerdcommenter
" add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
" use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1
" align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'
" set a language to use its alternate delimiters by default
let g:NERDCommentEmptyLines = 1
" enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

let g:AutoPairs = {'(':')', '[':']', '{':'}',"'":"'",'"':'"', '`':'`'} 
let g:AutoPairsMapCh = 0

let g:undotree_WindowLayout = 3
let g:undotree_SetFocusWhenToggle = 1

let g:NERDCreateDefaultMappings = 0

" unmap <leader>cu
nnoremap <C-e><C-t> :UndotreeToggle<CR>
inoremap <C-e><C-t> <esc>:UndotreeToggle<CR>a

map <C-e><C-s> <Plug>(expand_region_expand)
map <C-e><C-d> <Plug>(expand_region_shrink)

map <C-e><C-n> gu
map <C-e><C-u> gU

map <C-e><C-v> <Plug>NERDCommenterToggle
" inoremap <C-e><C-c> <ESC>:echom 'test'<CR>a




