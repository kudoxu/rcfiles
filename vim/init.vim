let g:ConfigManagerPreConfig = []

function! PreConfig(f)
    call add(g:ConfigManagerPreConfig, a:f)
endfunction

let g:ConfigManagerConfig = []

function! Config(f)
    call add(g:ConfigManagerConfig, a:f)
endfunction

if empty(glob('~/.config/nvim/autoload/plug.vim'))
    silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

for path in split( globpath('~/.config/nvim/config', '*.vim'), '\n')
    execute 'source ' . path
endfor

call plug#begin('~/.config/nvim/plugged')

for Fn in g:ConfigManagerPreConfig
    call Fn()
endfor

call plug#end()

for Fn in g:ConfigManagerConfig
    call Fn()
endfor
