" deoplete
let g:deoplete#enable_at_startup = 1
let g:echodoc#enable_at_startup = 1
set completeopt-=preview

inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

imap <C-e> <Plug>(neosnippet_expand)
