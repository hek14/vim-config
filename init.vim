set runtimepath+=/Users/ke/.config/nvim/nvim_configs
source ~/.config/nvim/nvim_configs/plugins.vim
source ~/.config/nvim/nvim_configs/let_and_set.vim
source ~/.config/nvim/nvim_configs/cmaps.vim
source ~/.config/nvim/nvim_configs/tmaps.vim
source ~/.config/nvim/nvim_configs/imaps.vim
source ~/.config/nvim/nvim_configs/nmaps.vim
source ~/.config/nvim/nvim_configs/vmaps.vim
source ~/.config/nvim/nvim_configs/autocomplete.vim
source ~/.config/nvim/nvim_configs/function_and_call.vim
" source ~/.config/nvim/nvim_configs/unite_config.vim
" source ~/.config/nvim/nvim_configs/denite_config.vim

" source ./nvim_configs/deprecated.vim
" ui part
colorscheme gruvbox 
filetype plugin indent on

au bufread,bufnewfile *.nginx set ft=nginx
au bufread,bufnewfile */etc/nginx/* set ft=nginx
au bufread,bufnewfile */usr/local/nginx/conf/* set ft=nginx
au bufread,bufnewfile nginx.conf set ft=nginx
