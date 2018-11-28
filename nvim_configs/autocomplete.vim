" YouCompleteMe settings
" For YouCompleteMe
nnoremap <leader>re :YcmRestartServer<cr>
nnoremap <leader>gg :YcmCompleter GoTo<cr>
nnoremap <leader>gf :YcmCompleter GoToDefinition<cr>
nnoremap <leader>gc :YcmCompleter GoToDeclaration<cr>
nnoremap <leader>gd  :YcmCompleter GetDoc<cr>
let g:ycm_key_invoke_completion = '<C-Space>'
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_complete_in_comments = 1 
let g:ycm_complete_in_strings = 1
let g:ycm_collect_identifiers_from_comments_and_strings = 1 
let g:ycm_autoclose_preview_window_after_completion=1
let g:ycm_server_python_interpreter ="/usr/bin/python"

" make YCM compatible with UltiSnips (using supertab)
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"
" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"


" Use deoplete.
" let g:deoplete#enable_at_startup = 1
" 	" Use smartcase.
" call deoplete#custom#option('smart_case', v:true)

" " <C-h>, <BS>: close popup and delete backword char.
" inoremap <expr><C-h> deoplete#smart_close_popup()."\<C-h>"
" inoremap <expr><BS>  deoplete#smart_close_popup()."\<C-h>"

" " <CR>: close popup and save indent.
" inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>

" function! s:my_cr_function() abort
"   return deoplete#close_popup() . "\<CR>"
" endfunction

" inoremap <silent><expr> <TAB>
" 		\ pumvisible() ? "\<C-n>" :
" 		\ <SID>check_back_space() ? "\<TAB>" :
" 		\ deoplete#mappings#manual_complete()
" function! s:check_back_space() abort "{{{
"   let col = col('.') - 1
"   return !col || getline('.')[col - 1]  =~ '\s'
" endfunction"}}}
