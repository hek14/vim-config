"Part: basic settings
" Use deoplete.
let g:deoplete#enable_at_startup = 1
let mapleader = ','
set spell spelllang=en_us
set undofile
set encoding=utf-8
if has('clipboard')
  if has('unnamedplus')  " When possible use + register for copy-paste
    set clipboard=unnamed,unnamedplus
  else         " On mac and Windows, use * register for copy-paste
    set clipboard=unnamed
  endif
endif
set ignorecase
set number
set conceallevel=1
set termguicolors
set background=dark
set expandtab
set autoindent
set softtabstop=4
set shiftwidth=2
set tabstop=4
set history=1000

"Part: plugin settings
" map part
"ctrlp
let g:ctrlp_map = '<leader>j'
set undodir=~/.config/nvim/undodir
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
let $NVIM_TUI_ENABLE_TRUE_COLOR=0
let $TERM='iterm2'
let g:javascript_plugin_jsdoc           = 1
let g:javascript_conceal_function       = "ƒ"
let g:javascript_conceal_null           = "ø"
let g:javascript_conceal_arrow_function = "⇒"
let g:javascript_conceal_return         = "⇚"
let g:jsx_ext_required = 0
" disable syntax checking
" let g:syntastic_check_on_open=1
let g:syntastic_mode_map = { 'mode': 'passive', 'active_filetypes': [],'passive_filetypes': [] }
let NERDTreeQuitOnOpen=1
let NERDTreeShowHidden=1
let NERDTreeIgnore = ['\.pyc$']
set foldmethod=indent
set foldlevel=99
set mouse=a                 " Automatically enable mouse usage
set mousehide               " Hide the mouse cursor while typing
