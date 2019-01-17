" For instant-preview for markdown file
au bufread,bufnewfile *.md,*.txt set ft=markdown
" au bufread,bufnewfile *.md,*.txt set ft=tex
set nofoldenable

" nnoremap <leader>ip :<c-u>InstantMarkdownPreview<CR>
nnoremap <leader>5 :Pandoc! pdf -V mainfont='Songti SC'<CR>
inoremap <silent> <Bar>   <Bar><Esc>:call <SID>align()<CR>a
function! s:align()
  let p = '^\s*|\s.*\s|\s*$'
  if exists(':Tabularize') && getline('.') =~# '^\s*|' && (getline(line('.')-1) =~# p || getline(line('.')+1) =~# p)
    let column = strlen(substitute(getline('.')[0:col('.')],'[^|]','','g'))
    let position = strlen(matchstr(getline('.')[0:col('.')],'.*|\s*\zs.*'))
    Tabularize/|/l1
    normal! 0
    call search(repeat('[^|]*|',column).'\s\{-\}'.repeat('.',position),'ce',line('.'))
  endif
endfunction

nnoremap <BS> :MdwiReturn<CR>
function! MdwiWriteTitle(word)
   return 'normal!\ a# '.strftime('%c').' - '.escape(a:word, ' \').'\<esc>'
endfunction

" vim-markdown for syntax, its settings
let g:vim_markdown_folding_disabled = 0
let g:vim_markdown_toc_autofit = 1
let g:vim_markdown_autowrite = 1
let g:vim_markdown_fenced_languages = ['python=py']
let g:vim_markdown_math = 1
let g:vim_markdown_new_list_item_indent = 0
set conceallevel=2
set nofoldenable
let g:vim_markdown_no_extensions_in_markdown = 1
" vim-pandoc
" first, use its functionality for markdown files
let g:pandoc#filetypes#handled = ["pandoc", "markdown"]
" second, do not use its syntax
let g:pandoc#filetypes#pandoc_markdown = 0
let g:pandoc#command#autoexec_on_writes = 0
let g:pandoc#command#autoexec_command = "Pandoc! pdf -V mainfont='Songti SC'"
