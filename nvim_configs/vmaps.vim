vnoremap <C-f> <esc>/\%V
vnoremap // y/<C-R>"<CR><Esc>
vnoremap <silent> //    y/<C-R>=escape(@", '\\/.*$^~[]')<CR><CR><Esc>
vnoremap <leader>s y:SearchInGoogle <C-R>"<cr>

vnoremap <leader>a :call VisualSelection('av', '')<CR>
vnoremap <silent> <leader>R :call VisualSelection('replace','')<CR>
vnoremap <silent> * :call VisualSelection('b')<CR>
vnoremap <silent> # :call VisualSelection('f')<CR>
" vnoremap $1 <esc>`>a)<esc>`<i(<esc>
" vnoremap $2 <esc>`>a]<esc>`<i[<esc>
" vnoremap $3 <esc>`>a}<esc>`<i{<esc>
" vnoremap $$ <esc>`>a"<esc>`<i"<esc>
" vnoremap $q <esc>`>a'<esc>`<i'<esc>
" vnoremap $e <esc>`>a"<esc>`<i"<esc>
function! VisualSelection(direction, extra_filter) range
    let l:saved_reg = @"
    execute "normal! vgvy"

    let l:pattern = escape(@", "\\/.*'$^~[]")
    let l:pattern = substitute(l:pattern, "\n$", "", "")

    if a:direction == 'av'
        call CmdLine("Ack '" . l:pattern . "' " )
    elseif a:direction == 'replace'
        call CmdLine("%s" . '/'. l:pattern . '/')
    endif

    let @/ = l:pattern
    let @" = l:saved_reg
endfunction
