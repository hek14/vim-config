" let &runtimepath=&runtimepath.','.'~/.config/nvim/nvim_configs'.','.'~/.config/nvim/after/ftplugin/instant-markdown.vim'
source ~/.config/nvim/nvim_configs/plugins.vim
source ~/.config/nvim/nvim_configs/let_and_set.vim
source ~/.config/nvim/nvim_configs/cmaps.vim
source ~/.config/nvim/nvim_configs/tmaps.vim
source ~/.config/nvim/nvim_configs/imaps.vim
source ~/.config/nvim/nvim_configs/nmaps.vim
source ~/.config/nvim/nvim_configs/vmaps.vim
source ~/.config/nvim/nvim_configs/autocomplete.vim
source ~/.config/nvim/nvim_configs/function_and_call.vim
source ~/.config/nvim/nvim_configs/kkmarkdown.vim
set nocompatible
" colorscheme gruvbox 
filetype plugin indent on
syntax on
highlight LineNr ctermfg=grey ctermbg=white
au bufread,bufnewfile *.nginx set ft=nginx
au bufread,bufnewfile */etc/nginx/* set ft=nginx
au bufread,bufnewfile */usr/local/nginx/conf/* set ft=nginx
au bufread,bufnewfile nginx.conf set ft=nginx

" Input method
nmap <silent> <esc> <esc>:call Change_input_method()<CR>
imap <silent> <esc> <esc>:call Change_input_method()<CR>
vmap <silent> <esc> <esc>:call Change_input_method()<CR>
cmap <silent> <esc> <esc>:call Change_input_method()<CR>
function! Change_input_method()
   silent! execute '!/usr/local/bin/im-select com.apple.keylayout.ABC'
endfunction
