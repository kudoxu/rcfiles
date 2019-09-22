" deoplete

Plug 'Shougo/deoplete.nvim'
Plug 'Shougo/neco-syntax'

let g:deoplete#enable_at_startup = 1
let g:echodoc#enable_at_startup = 1
set completeopt-=preview

inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" imap <C-e> <Plug>(neosnippet_expand)
Plug 'autozimu/LanguageClient-neovim', {'rev': 'next','build': 'bash install.sh'}

set hidden

let g:LanguageClient_serverCommands = {
    \ 'rust': ['rustup', 'run', 'stable', 'rls'],
    \ 'python': ['/home/tiannian/.local/bin/pyls'],
    \ }

nnoremap <silent> K :call LanguageClient#textDocument_hover()<CR>
nnoremap <silent> gd :call LanguageClient#textDocument_definition()<CR>
nnoremap <silent> <F2> :call LanguageClient#textDocument_rename()<CR>

Plug 'Shougo/echodoc.vim'
let g:echodoc_enable_at_startup = 1

Plug 'Shougo/deoppet.nvim'

