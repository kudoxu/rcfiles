function! s:PreConfig()
    Plug 'flazz/vim-colorschemes'

    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
endfunction

function! s:Config()
    colorscheme vimbrant
    let g:airline#extensions#tabline#enabled = 1
    let g:airline_powerline_fonts = 1
    let g:airline_theme = 'wombat'
    let g:airline_right_sep = ' '
    let g:airline_left_sep = ' '
    let g:airline#extensions#tabline#left_sep = ' '
    let g:airline#extensions#tabline#right_sep = ' '
    let g:airline#extensions#tabline#left_alt_sep = '|'
endfunction

call PreConfig(function("s:PreConfig"))
call Config(function("s:Config"))

