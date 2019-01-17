" plugin part
call plug#begin('~/.local/share/nvim/plugged')
Plug 'jiangmiao/auto-pairs' 
" Text object or motions
Plug 'kana/vim-textobj-user'   " for self-defined textObject
Plug 'kana/vim-textobj-indent' " aI,iI, ai, ii
Plug 'kana/vim-textobj-entire' " ae,ie
Plug 'kana/vim-textobj-line'  " al,il
Plug 'bps/vim-textobj-python' "ac,ic for class; af,if for a function
Plug 'easymotion/vim-easymotion' "quickly move to the target place using ,,w/b/e/j/k/


Plug 'lyokha/vim-xkbswitch' " input method swithing

" Markdown
Plug 'shime/vim-livedown'
Plug 'chrisbra/NrrwRgn'
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'vim-pandoc/vim-pandoc'

Plug 'VoldikSS/vim-searchme' " Quick triggle search in google

Plug 'mhinz/neovim-remote'
Plug 'lervag/vimtex'
Plug 'vim-scripts/VisIncr'
Plug 'myusuf3/numbers.vim'
Plug 'fisadev/fisa-vim-colorscheme'
Plug 'Shougo/context_filetype.vim'

Plug 'MattesGroeger/vim-bookmarks'
" Plug 'ervandew/supertab'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'morhetz/gruvbox'
Plug 'skywind3000/asyncrun.vim'
Plug 'mileszs/ack.vim'
" Plug 'w0rp/ale'
Plug 'tpope/vim-commentary'
Plug 'jlanzarotta/bufexplorer'
" Plug 'vim-scripts/mru.vim'
Plug 'amix/open_file_under_cursor.vim'
Plug 'terryma/vim-expand-region'
Plug 'michaeljsmith/vim-indent-object'
" Plug 'terryma/vim-multiple-cursors'
Plug 'maxbrunsfeld/vim-yankstack'
Plug 'tpope/vim-fugitive'
"too many bugs for vdebug
"Plug 'vim-vdebug/vdebug'
"Plug 'idanarye/vim-vebugger'
"Plug 'jaredly/vim-debug'
Plug 'Shougo/vimproc.vim', {'do' : 'make'}
Plug 'vim-scripts/Vimball'
Plug 'scrooloose/nerdtree'
Plug 'itchyny/lightline.vim'
Plug 'junegunn/goyo.vim'
Plug 'rust-lang/rust.vim'
" Plug 'ctrlpvim/ctrlp.vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'groenewege/vim-less'
Plug 'vim-scripts/nginx.vim'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'zchee/deoplete-jedi'
Plug 'davidhalter/jedi-vim'
" Plug 'Valloric/YouCompleteMe'
Plug 'vim-syntastic/syntastic'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'airblade/vim-gitgutter'
" Plug 'pangloss/vim-javascript', { 'for': ['javascript', 'javascript.jsx'] }
" Plug 'mxw/vim-jsx', { 'for': ['javascript', 'javascript.jsx'] }
Plug 'Raimondi/delimitMate'
Plug 'tmhedberg/SimpylFold'
Plug 'Vimjas/vim-python-pep8-indent'
Plug 'mhinz/vim-startify'
Plug 'vim-scripts/nginx.vim'
Plug 'leafgarland/typescript-vim'
Plug 'Quramy/tsuquyomi'
call plug#end()
