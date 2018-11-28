set runtimepath+=/Users/ke/.config/nvim/nvim_configs
source /Users/ke/.config/nvim/nvim_configs/plugins.vim
source /Users/ke/.config/nvim/nvim_configs/let_and_set.vim
source /Users/ke/.config/nvim/nvim_configs/cmaps.vim
source /Users/ke/.config/nvim/nvim_configs/tmaps.vim
source /Users/ke/.config/nvim/nvim_configs/imaps.vim
source /Users/ke/.config/nvim/nvim_configs/nmaps.vim
source /Users/ke/.config/nvim/nvim_configs/vmaps.vim
source /Users/ke/.config/nvim/nvim_configs/autocomplete.vim
source /Users/ke/.config/nvim/nvim_configs/function_and_call.vim

" source ./nvim_configs/deprecated.vim
" ui part
colorscheme gruvbox 
filetype plugin indent on

au bufread,bufnewfile *.nginx set ft=nginx
au bufread,bufnewfile */etc/nginx/* set ft=nginx
au bufread,bufnewfile */usr/local/nginx/conf/* set ft=nginx
au bufread,bufnewfile nginx.conf set ft=nginx
