"Part: basic settings
" For textobj-python
call textobj#user#map('python', {
      \   'class': {
      \     'select-a': '<buffer>ac',
      \     'select-i': '<buffer>ic',
      \     'move-n': '<buffer>]pc',
      \     'move-p': '<buffer>[pc',
      \   },
      \   'function': {
      \     'select-a': '<buffer>af',
      \     'select-i': '<buffer>if',
      \     'move-n': '<buffer>]pf',
      \     'move-p': '<buffer>[pf',
      \   }
      \ })
"Input method switching
let g:XkbSwitchEnabled = 1
set hlsearch
set incsearch
let g:instant_markdown_autostart = 0
" set 256 colors
set t_Co=256
" vimtex settings
let g:vimtex_compiler_progname = 'nvr'
let g:vimtex_compiler_latexmk_engines = {
      \ '_'                : '-xelatex',
      \ 'pdflatex'         : '-pdf',
      \ 'dvipdfex'         : '-pdfdvi',
      \ 'lualatex'         : '-lualatex',
      \ 'xelatex'          : '-xelatex',
      \ 'context (pdftex)' : '-pdf -pdflatex=texexec',
      \ 'context (luatex)' : '-pdf -pdflatex=context',
      \ 'context (xetex)'  : '-pdf -pdflatex=''texexec --xtx''',
      \}

" set neovim python env path:
let g:python_host_prog = '/usr/bin/python'
let g:python3_host_prog = '/usr/local/bin/python3'

" use 256 colors when possible
" if (&term =~? 'mlterm\|xterm\|xterm-256\|screen-256') || has('nvim')
" 	let &t_Co = 256
"     colorscheme fisa
" else
"     colorscheme delek
" endif
colorscheme gruvbox
" For terminal mode: do not wipe the terminal buffer, try to hide it instead
autocmd TermOpen * set bufhidden=hide  
" For vim-bookmarks
let g:bookmark_highlight_lines = 1
" For ultiSnips
let g:UltiSnipsSnippetsDir = '/Users/ke/.local/share/nvim/plugged/vim-snippets/UltiSnips'
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
" let g:ctrlp_map = '<c-p>'
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
