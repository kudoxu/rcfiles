" " lilydjwg/fcitx.vim
" let $fcitx_socket='/tmp/fcitx-socket-:0'

" 自动注释
call Tn_add('scrooloose/nerdcommenter')
let g:NERDCreateDefaultMappings = 0
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

" noremap <leader>ec<CR> <plug>NERDCommenterToggle
map <C-e>/ <plug>NERDCommenterComment
map <C-e>? <plug>NERDCommenterUncomment

call Tn_add('jiangmiao/auto-pairs')
let g:AutoPairs = {'(':')', '[':']', '{':'}',"'":"'",'"':'"', '`':'`'} 
let g:AutoPairsMapCh = 0

call Tn_add('mbbill/undotree')
let g:undotree_WindowLayout = 3
let g:undotree_SetFocusWhenToggle = 1

" unmap <leader>cu
nnoremap <C-e>u :UndotreeToggle<CR>

" 区域选择
" [normal] + 扩展
" [normal] _ 缩小
call Tn_add('terryma/vim-expand-region')

" nnoremap <C-e>+ <Plug>(expand_region_expand)
" nnoremap <C-e>_ <Plug>(expand_region_shrink)





