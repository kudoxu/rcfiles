function! s:PreConfig()
    Plug 'haya14busa/incsearch.vim'
    Plug 'Yggdroot/indentLine'
    Plug 'scrooloose/nerdcommenter'
endfunction

function! s:Config()
    let g:indentLine_color_term = 239
    let g:indentLine_char = '▏'
    let g:indentLine_concealcursor = ''

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

    map <leader>/ <plug>NERDCommenterComment
    map <leader>? <plug>NERDCommenterUncomment
endfunction

call PreConfig(function("s:PreConfig"))
call Config(function("s:Config"))

