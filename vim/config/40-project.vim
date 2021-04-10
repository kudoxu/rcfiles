function! s:PreConfig()
    Plug 'airblade/vim-gitgutter'
    Plug 'tpope/vim-fugitive'
endfunction

function! s:Config()
    let g:gitgutter_map_keys = 0
    nmap <leader>e :CocCommand explorer<CR>
endfunction

call PreConfig(function("s:PreConfig"))
call Config(function("s:Config"))

