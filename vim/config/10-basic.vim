function! s:Config()
    filetype plugin on
    " map <C-a> <Nop>
    let g:mapleader="."
    set nu
    set tabstop=4
    set softtabstop=4
    set shiftwidth=4
    set expandtab
    set showmatch
    set nowrap
    set rnu
    set clipboard+=unnamedplus
endfunction

call Config(function("s:Config"))

