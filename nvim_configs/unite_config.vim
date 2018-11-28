" Unite
let g:unite_source_history_yank_enable = 1
let g:unite_split_rule = 'botright'
let g:unite_enable_ignore_case = 1
let g:unite_enable_smart_case = 1
let g:unite_enable_auto_select = 0
" let g:unite_enable_start_insert = 1
" try replace CtrlP
nnoremap <leader>t :<C-u>Unite  -start-insert -buffer-name=files    file_rec/async:!<cr>
" nnoremap <leader>f :<C-u>Unite -no-split -buffer-name=files   -start-insert file<cr>
nnoremap <leader>f :<C-u>Unite  -start-insert -buffer-name=mru      file_mru<cr>
" nnoremap <leader>o :<C-u>Unite -no-split -buffer-name=outline -start-insert outline<cr>
nnoremap <leader>y :<C-u>Unite  -buffer-name=yank     history/yank<cr>
" nnoremap <leader>e :<C-u>Unite -no-split -buffer-name=buffer  buffer<cr>
nnoremap <leader>o :<c-u>Unite -no-split -auto-resize buffer file<cr>
nnoremap <leader>a :Unite grep:.<cr>
" integrate vim-bookmarks with unite.vim
call unite#custom#profile('source/vim_bookmarks', 'context', {
	\   'winheight': 20,
	\   'direction': 'botright',
	\   'start_insert': 0,
	\   'keep_focus': 1,
	\   'no_quit': 1,
	\ })
call unite#filters#matcher_default#use(['matcher_fuzzy'])
" in the Unite buffer
autocmd FileType unite call s:unite_settings()
function! s:unite_settings()
  " Play nice with supertab
  let b:SuperTabDisabled=1
  " Enable navigation with control-j and control-k in insert mode
  imap <buffer> <C-j>   <Plug>(unite_select_next_line)
  imap <buffer> <C-k>   <Plug>(unite_select_previous_line)
  imap <silent><buffer><expr> <C-s> unite#do_action('split')
  imap <silent><buffer><expr> <C-v> unite#do_action('vsplit')
  nmap <silent><buffer><expr> s unite#do_action('split')
  nmap <silent><buffer><expr> v unite#do_action('vsplit')
endfunction
let g:unite_source_menu_menus = get(g:,'unite_source_menu_menus',{})
let g:unite_source_menu_menus.git = {
    \ 'description' : '            gestionar repositorios git
        \                            ? [espacio]g',
    \}
let g:unite_source_menu_menus.git.command_candidates = [
    \['? tig                                                        ? ,gt',
        \'normal ,gt'],
    \['? git status       (Fugitive)                                ? ,gs',
        \'Gstatus'],
    \['? git diff         (Fugitive)                                ? ,gd',
        \'Gdiff'],
    \['? git commit       (Fugitive)                                ? ,gc',
        \'Gcommit'],
    \['? git log          (Fugitive)                                ? ,gl',
        \'exe "silent Glog | Unite quickfix"'],
    \['? git blame        (Fugitive)                                ? ,gb',
        \'Gblame'],
    \['? git stage        (Fugitive)                                ? ,gw',
        \'Gwrite'],
    \['? git checkout     (Fugitive)                                ? ,go',
        \'Gread'],
    \['? git rm           (Fugitive)                                ? ,gr',
        \'Gremove'],
    \['? git mv           (Fugitive)                                ? ,gm',
        \'exe "Gmove " input("destino: ")'],
    \['? git push         (Fugitive, salida por buffer)             ? ,gp',
        \'Git! push'],
    \['? git pull         (Fugitive, salida por buffer)             ? ,gP',
        \'Git! pull'],
    \['? git prompt       (Fugitive, salida por buffer)             ? ,gi',
        \'exe "Git! " input("comando git: ")'],
    \['? git cd           (Fugitive)',
        \'Gcd'],
    \]
" nnoremap <silent>[menu]g :Unite -silent -start-insert menu:git<CR>
call SetupCommandAlias("Gitmenu","Unite -silent -start-insert menu:git<cr>")
