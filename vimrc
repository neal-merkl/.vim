" Enable Pathogen
execute pathogen#infect()

" NERDTree settings
map <C-n> :NERDTreeToggle<CR>
" NERDTree settings

" Syntastic settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
" Syntastic settings

" Regular settings
syntax enable
set background=dark
set autoindent
set expandtab
set smarttab
set tabstop=2
set softtabstop=2
set shiftwidth=2
set hlsearch
set ignorecase
set smartcase
set linebreak
set wrap
set ruler
set number
set title
set backspace=indent,eol,start

filetype plugin indent on
