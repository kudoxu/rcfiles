function! s:PreConfig()
    Plug 'cespare/vim-toml'
endfunction

function! s:Config()
endfunction

call PreConfig(function("s:PreConfig"))
call Config(function("s:Config"))

