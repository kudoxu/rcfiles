"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/home/tiannian/.config/nvim/plugins/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('/home/tiannian/.config/nvim/plugins')
    call dein#begin('/home/tiannian/.config/nvim/plugins')

    " Let dein manage dein
    " Required:
    call dein#add('/home/tiannian/.config/nvim/plugins/repos/github.com/Shougo/dein.vim')
   
    call dein#add('Shougo/dein.vim')
    " ----- 10-basic -------
    call dein#add('Shougo/context_filetype.vim')

    " ----- 20-utils -------
    call dein#add('itchyny/vim-cursorword')
    call dein#add('haya14busa/incsearch.vim')
    call dein#add('Yggdroot/indentLine')
    call dein#add('beloglazov/vim-online-thesaurus')
    call dein#add('Shougo/vimproc.vim')
    call dein#add('terryma/vim-expand-region')
    " call dein#add('Shougo/vimshell.vim')
    " call dein#add('vimwiki/vimwiki')
    " ----- 30-editer------
    call dein#add('lilydjwg/fcitx.vim')
    call dein#add('scrooloose/nerdcommenter')
    call dein#add('mbbill/undotree')
    call dein#add('jiangmiao/auto-pairs')
    call dein#add('jsfaint/gen_tags.vim')
   
    " ----- 40-theme ------
    call dein#add('flazz/vim-colorschemes')
    call dein#add('vim-airline/vim-airline')
    call dein#add('vim-airline/vim-airline-themes')
    
    " ----- 50-project ------
    call dein#add('scrooloose/nerdtree')    
    call dein#add('Xuyuanp/nerdtree-git-plugin')
    call dein#add('airblade/vim-gitgutter')
    call dein#add('tpope/vim-fugitive')

    " ----- 60-autocomplete ------ 
    call dein#add('Shougo/deoplete.nvim')
    call dein#add('Shougo/neco-syntax')
    call dein#add('Shougo/neco-vim')
    call dein#add('Shougo/neosnippet.vim')
    call dein#add('Shougo/neosnippet-snippets')
    call dein#add('Shougo/echodoc.vim')
    call dein#add('zchee/deoplete-docker')
    call dein#add('racer-rust/vim-racer')
    call dein#add('zchee/deoplete-jedi')

    " ----- 70-language -------
    call dein#add('leafgarland/typescript-vim')
    call dein#add('rust-lang/rust.vim')
    call dein#add('cespare/vim-toml')


    " ----- 80-menu ------    
    call dein#add('Shougo/denite.nvim')

    " Required:
    call dein#end()
    call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
" if dein#check_install()
"  call dein#install()
" endif

"End dein Scripts-------------------------

let g:tn_config_prefix='~/.config/nvim/config/'
" execute 'source ' . tn_config_prefix . 'main.vim'
for path in split( globpath(g:tn_config_prefix, '*.vim'), '\n')
  execute 'source ' . path
endfor
 
