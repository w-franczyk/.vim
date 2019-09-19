" pathogen
execute pathogen#infect()

" code format
syntax on
filetype plugin indent on

" key bindings
let mapleader = ","
map <Leader>n <plug>NERDTreeTabsToggle<CR>
