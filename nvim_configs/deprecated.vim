"Part: deprecated
" call part 2
" deoplete-clang 
" Change clang binary path
"call deoplete#custom#var('clangx', 'clang_binary', '/usr/bin/clang')

" Change clang options
"call deoplete#custom#var('clangx', 'default_c_options', '')
"call deoplete#custom#var('clangx', 'default_cpp_options', '')
"deoplete-python
"deoplete-syntax


" let part or plugin settings
"let g:deoplete#enable_at_startup = 1
"let g:deoplete#sources#jedi#show_docstring=1
" deoplete with virtual environment and third party packages
" g:deoplete#sources#jedi#python_path      :virtual env
" g:deoplete#sources#jedi#extra_path       :third party
"autocmd BufEnter * lcd %:p:h
