if empty(glob('~/.config/nvim/autoload/plug.vim'))
    silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/plugged')

" Load config
for path in split( globpath('~/.config/nvim/config', '*.vim'), '\n')
    execute 'source ' . path
endfor

call plug#end()

colorscheme vimbrant

