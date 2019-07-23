function! Tn_init(base_dir)
    " set base_dir
    let g:tn_base_dir=a:base_dir

    " close compatible
    if &compatible
        set nocompatible
    endif

    " add runtimepath
    let &runtimepath=&runtimepath . "," . g:tn_base_dir . "/repos/github.com/Shougo/dein.vim"

    " set state
    let g:tn_dein_state=dein#load_state(a:base_dir)

    if g:tn_dein_state 
        call dein#begin(a:base_dir)
	call dein#add(a:base_dir . '/repos/github.com/Shougo/dein.vim')
    endif
endfunction

function! Tn_add(...)
    if g:tn_dein_state
        if len(a:000) == 1
            call dein#add(a:000[0])
        else
            call dein#add(a:000[0],a:000[1])
        endif
    endif
endfunction

function! Tn_end()
    if g:tn_dein_state 
        call dein#end()
        call dein#save_state()
    endif
    filetype plugin indent on
    syntax enable
endfunction

call Tn_init("~/.config/nvim/plugins")

" Load config
for path in split( globpath(g:tn_base_dir . '/../config', '*.vim'), '\n')
    execute 'source ' . path
endfor

call Tn_end()
