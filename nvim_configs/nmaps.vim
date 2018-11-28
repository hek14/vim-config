" For yank stack
nmap <leader>p <Plug>yankstack_substitute_older_paste
nmap <leader>P <Plug>yankstack_substitute_newer_paste
" For CtrlP 
nmap <leader>j :CtrlPMRUFiles<cr>

" try to use Unite to replace BufExplorer and MRU
" nmap <leader>o :BufExplorer<cr>
" nmap <leader>f :MRU<CR>

nmap <leader>nn :NERDTreeToggle<cr>
nmap <leader>nb :NERDTreeFromBookmark
nmap <leader>nf :NERDTreeFind<cr>

nmap <leader>z :Goyo<cr>

nmap <leader>w :w!<cr>
nmap <space> /
nmap <c-space> ?
nmap <silent> <leader><cr> :noh<cr>
nmap <C-j> <C-W>j
nmap <C-k> <C-W>k
nmap <C-h> <C-W>h
nmap <C-l> <C-W>l
" Close current buffer
" map <leader>bd :bdelete<cr>
nmap <leader>bd :Bclose<cr>:tabclose<cr>gT
" Close all buffers
nmap <leader>ba :bufdo bd<cr>
" close all buffers except this one
nmap <leader>bo :BufOnly<cr>

nmap <leader>tn :tabnext<cr>
"also gt
nmap <leader>tp :tabprevious<cr>
" alse gT
nmap <leader>to :tabonly<cr>
nmap <leader>tc :tabclose<cr>
nmap <leader>tt :tabnew<cr>
nmap <leader>tf :tabfind 
nmap <leader>tm :tabmove
" Opens a new tab with the current buffer's path
" Super useful when editing files in the same directory
nmap <leader>te :tabedit <c-r>=expand("%:p:h")<cr>/


nmap <leader>cd :cd %:p:h<cr>:pwd<cr>
" try to replace ack by Unite grep
" nmap <leader>a :Ack  
" nmap <leader>pp :setlocal paste!<cr>

autocmd FileType python nnoremap <LocalLeader>= :0,$!yapf<CR>

nmap w= <C-w>3+
nmap w- <C-w>3-
nmap wc <C-w>c
nmap wo <C-w>o
nmap we <C-w>=
nmap w] <C-w>3>
nmap w[ <C-w>3<
" tmap <C-w>j <C-\><C-n><C-w>j 
" tmap <C-w>k <C-\><C-n><C-w>k
" tmap <C-w>h <C-\><C-n><C-w>h
" tmap <C-w>l <C-\><C-n><C-w>l
noremap <leader>cy "*y
noremap <leader>cp "*p"
nnoremap <silent> [oh :call gruvbox#hls_show()<CR>
nnoremap <silent> ]oh :call gruvbox#hls_hide()<CR>
nnoremap <silent> coh :call gruvbox#hls_toggle()<CR>

nnoremap * :let @/ = ""<CR>:call gruvbox#hls_show()<CR>*
nnoremap / :let @/ = ""<CR>:call gruvbox#hls_show()<CR>/
nnoremap ? :let @/ = ""<CR>:call gruvbox#hls_show()<CR>?

" function used by mappings
command! Bclose call <SID>BufcloseCloseIt()
function! <SID>BufcloseCloseIt()
    let l:currentBufNum = bufnr("%")
    let l:alternateBufNum = bufnr("#")

    if buflisted(l:alternateBufNum)
        buffer #
    else
        bnext
    endif

    if bufnr("%") == l:currentBufNum
        new
    endif

    if buflisted(l:currentBufNum)
        execute("bdelete! ".l:currentBufNum)
    endif
endfunction
function! BufOnly(buffer, bang)
	if a:buffer == ''
		" No buffer provided, use the current buffer.
		let buffer = bufnr('%')
	elseif (a:buffer + 0) > 0
		" A buffer number was provided.
		let buffer = bufnr(a:buffer + 0)
	else
		" A buffer name was provided.
		let buffer = bufnr(a:buffer)
	endif

	if buffer == -1
		echohl ErrorMsg
		echomsg "No matching buffer for" a:buffer
		echohl None
		return
	endif

	let last_buffer = bufnr('$')

	let delete_count = 0
	let n = 1
	while n <= last_buffer
		if n != buffer && buflisted(n)
			if a:bang == '' && getbufvar(n, '&modified')
				echohl ErrorMsg
				echomsg 'No write since last change for buffer'
							\ n '(add ! to override)'
				echohl None
			else
				silent exe 'bdel' . a:bang . ' ' . n
				if ! buflisted(n)
					let delete_count = delete_count+1
				endif
			endif
		endif
		let n = n+1
	endwhile

	if delete_count == 1
		echomsg delete_count "buffer deleted"
	elseif delete_count > 1
		echomsg delete_count "buffers deleted"
	endif

endfunction
" BufOnly.vim  -  Delete all the buffers except the current/named buffer.
" Usage:
" :Bonly / :BOnly / :Bufonly / :BufOnly [buffer]
" Without any arguments the current buffer is kept.  With an argument the
" buffer name/number supplied is kept.

command! -nargs=? -complete=buffer -bang Bonly
    \ :call BufOnly('<args>', '<bang>')
command! -nargs=? -complete=buffer -bang BOnly
    \ :call BufOnly('<args>', '<bang>')
command! -nargs=? -complete=buffer -bang Bufonly
    \ :call BufOnly('<args>', '<bang>')
command! -nargs=? -complete=buffer -bang BufOnly
    \ :call BufOnly('<args>', '<bang>')

function! CmdLine(str)
    call feedkeys(":" . a:str)
endfunction 
