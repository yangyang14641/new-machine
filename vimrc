execute pathogen#infect()
syntax on
filetype plugin on


" Leader shortcuts

let mapleader=","       " leader is comma

" toggle gundo
nnoremap <leader>u :GundoToggle<CR>

" save session
nnoremap <leader>s :mksession<CR>

" edit vimrc/bashrc and load vimrc bindings
nnoremap <leader>ev :vsp $MYVIMRC<CR>
nnoremap <leader>ez :vsp ~/.bashrc<CR>
nnoremap <leader>ef :vsp ~/.profile<CR>
nnoremap <leader>sv :source $MYVIMRC<CR>


" Colors and spacing

colorscheme badwolf     " awesome colorscheme
syntax enable           " enable syntax processing
set tabstop=3           " number of visual spaces per TAB
set softtabstop=3       " number of spaces in tab when editing
set expandtab           " tabs are spaces


" UI Config

set number              " show line numbers
set showcmd             " show command in bottom bar
set cursorline          " highlight current line
set wildmenu            " visual autocomplete for command menu
set lazyredraw          " redraw only when we need to.
set showmatch           " highlight matching [{()}]


" Searching

set incsearch           " search as characters are entered
set hlsearch            " highlight matches

" turn off search highlight
nnoremap <leader><space> :nohlsearch<CR>


" Movement

" move vertically by visual line
nnoremap j gj
nnoremap k gk

" move to beginning/end of line
nnoremap B ^
nnoremap E $

" highlight last inserted text
nnoremap gV `[v`]



" Ctrl-P settings

let g:ctrlp_match_window = 'bottom,order:ttb'
let g:ctrlp_switch_buffer = 0
let g:ctrlp_working_path_mode = 0


" Backup file preferences 

set backup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set backupskip=/tmp/*,/private/tmp/*
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set writebackup
