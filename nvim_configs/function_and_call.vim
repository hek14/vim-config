" function part and command part
" integrate vim-bookmarks with unite.vim
call unite#custom#profile('source/vim_bookmarks', 'context', {
	\   'winheight': 13,
	\   'direction': 'botright',
	\   'start_insert': 1,
	\   'keep_focus': 1,
	\   'no_quit': 1,
	\ })
call unite#filters#matcher_default#use(['matcher_fuzzy'])
" in the Unite buffer: Buffers
autocmd FileType unite call s:unite_settings()
function! s:unite_settings()
  " Play nice with supertab
  let b:SuperTabDisabled=1
  " Enable navigation with control-j and control-k in insert mode
  imap <buffer> <C-j>   <Plug>(unite_select_next_line)
  imap <buffer> <C-k>   <Plug>(unite_select_previous_line)
  imap <silent><buffer><expr> <C-s> unite#do_action('split')
  imap <silent><buffer><expr> <C-v> unite#do_action('vsplit')
endfunction

" Redirection to quickfix buffer
function! Redir(cmd)
	for win in range(1, winnr('$'))
		if getwinvar(win, 'scratch')
			execute win . 'windo close'
		endif
	endfor
	if a:cmd =~ '^!'
		execute "let output = system('" . substitute(a:cmd, '^!', '', '') . "')"
	else
		redir => output
		execute a:cmd
		redir END
	endif
	vnew
	let w:scratch = 1
	setlocal nobuflisted buftype=nofile bufhidden=wipe noswapfile
	call setline(1, split(output, "\n"))
endfunction
command! -nargs=1 -complete=command Redir silent call Redir(<f-args>)


" Quick run via <F5> or alias :Werun
nnoremap <F5> :call <SID>compile_and_run()<CR>
function! s:compile_and_run()
    exec 'w'
    if &filetype == 'c'
        exec "AsyncRun! gcc % -o %<; time ./%<"
    elseif &filetype == 'cpp'
       exec "AsyncRun! g++ -std=c++11 % -o %<; time ./%<"
    elseif &filetype == 'java'
       exec "AsyncRun! javac %; time java %<"
    elseif &filetype == 'sh'
       exec "AsyncRun! time bash %"
    elseif &filetype == 'python'
       exec "AsyncRun! time python %"
    endif
endfunction
let g:asyncrun_open = 15
command! -nargs=0 Werun silent call <SID>compile_and_run()

" open terminal in split window
command! -nargs=* T split | terminal <args>
command! -nargs=* VT vsplit | terminal <args>

" commandAlias
fun! SetupCommandAlias(from, to)
  exec 'cnoreabbrev <expr> '.a:from
        \ .' ((getcmdtype() is# ":" && getcmdline() is# "'.a:from.'")'
        \ .'? ("'.a:to.'") : ("'.a:from.'"))'
endfun
call SetupCommandAlias("yg","YcmCompleter GoTo")
call SetupCommandAlias("ygdef","YcmCompleter GoToDefinition")
call SetupCommandAlias("yginc","YcmCompleter GoToInclude")
call SetupCommandAlias("ygdec","YcmCompleter GoToDeclaration")
call SetupCommandAlias("ygdoc","YcmCompleter GetDoc")
