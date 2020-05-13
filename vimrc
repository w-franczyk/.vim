" pathogen
execute pathogen#infect()

" code format
syntax on
filetype plugin indent on

" key bindings
let mapleader = ","
map <Leader>n <plug>NERDTreeTabsToggle<CR>

" mouse
set mouse=a

" apperance
set background=dark       " dark...
colorscheme gruvbox       " ...gruvbox
set cursorline            " highlight line
set number		  " line numbers
set colorcolumn=90	  " column limiting line width

" clipboard
set clipboard=unnamedplus

" indexing
autocmd Filetype c,cpp autocmd BufWritePost,FileWritePost,FileAppendPost <buffer> call rtags#ReindexFile()

" other
set backspace=2 " for backspace not deleting issue
