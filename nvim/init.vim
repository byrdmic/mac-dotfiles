call plug#begin("$XDG_CONFIG_HOME/nvim/plugged")
    Plug 'chrisbra/csv.vim'
    Plug 'simeji/winresizer'
    Plug 'junegunn/fzf.vim'
call plug#end()

" csv configuration
autocmd BufRead,BufWritePost *.csv :%ArrangeColumn!
autocmd BufWritePre *.csv :%UnArrangeColumn

" window resizer key
let g:winresizer_start_key = "<leader>w"

" no swap file
set noswapfile

" don't complain about hidden buffers
set hidden

" save undo-trees in files
set undofile
set undodir=$HOME/.config/nvim/undo

" number of undo saved
set undolevels=10000
set undoreload=10000

" set line number
set number

" use 4 spaces instead of tab
" copy indent from current line when started a new line
set autoindent
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4

" basic key maps
let mapleader = ","

inoremap jk <esc>
nnoremap <space> zz

" reload vimrc with <leader> r
nnoremap <leader>r :source $MYVIMRC<cr>
