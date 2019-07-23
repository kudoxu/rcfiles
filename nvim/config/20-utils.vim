" 单词下划线
call Tn_add('itchyny/vim-cursorword')

" 高级查找显示
call Tn_add('haya14busa/incsearch.vim')

" 字典查询
call Tn_add('beloglazov/vim-online-thesaurus')
let g:online_thesaurus_map_keys = 0
" nnoremap <leader><SPACE> :OnlineThesaurusCurrentWord<CR>

" 缩进显示
call Tn_add('Yggdroot/indentLine')
let g:indentLine_color_term = 239
let g:indentLine_char = '▏'
let g:indentLine_concealcursor = ''

" 内部执行命令
call Tn_add('Shougo/deol.nvim')

set noshowmode
set relativenumber
set nowrap
