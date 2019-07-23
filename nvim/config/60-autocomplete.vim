" deoplete

call Tn_add('Shougo/deoplete.nvim')
call Tn_add('Shougo/neco-syntax')

let g:deoplete#enable_at_startup = 1
let g:echodoc#enable_at_startup = 1
set completeopt-=preview

inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" imap <C-e> <Plug>(neosnippet_expand)
call Tn_add('autozimu/LanguageClient-neovim', {'rev': 'next','build': 'bash install.sh'})

set hidden

let g:LanguageClient_serverCommands = {
    \ }

nnoremap <silent> K :call LanguageClient#textDocument_hover()<CR>
nnoremap <silent> gd :call LanguageClient#textDocument_definition()<CR>
nnoremap <silent> <F2> :call LanguageClient#textDocument_rename()<CR>

call Tn_add('Shougo/echodoc.vim')
let g:echodoc_enable_at_startup = 1

call Tn_add('Shougo/deoppet.nvim')

