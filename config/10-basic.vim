filetype plugin on
" 配置leader键
" unmap '<C-a>'
let g:mapleader = "\1"

" 开启行号
set nu
" 配置TAB缩进
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
" 开启括号匹配
set showmatch
" 关闭行折叠
set nowrap

inoremap <C-h> <LEFT>
inoremap <C-j> <DOWN>
inoremap <C-k> <UP>
inoremap <C-l> <RIGHT>

" 调整剪贴板
set clipboard+=unnamedplus

