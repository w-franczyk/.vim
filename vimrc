" pathogen
execute pathogen#infect()

" code format
syntax on
filetype plugin indent on

" key bindings
let mapleader = ","
map <Leader>n <plug>NERDTreeTabsToggle<CR>

" mouse
set mouse=n

" apperance
set background=dark       " dark...
colorscheme gruvbox       " ...gruvbox
set cursorline            " highlight line
set number		  " line numbers
set colorcolumn=90	  " column limiting line width

" ---------
" clipboard
" ---------
set clipboard=unnamedplus

" -----------------------
" indexing and completion
" -----------------------
autocmd Filetype c,cpp autocmd BufWritePost,FileWritePost,FileAppendPost <buffer> call rtags#ReindexFile()
set completefunc=RtagsCompleteFunc

" enter confirms the choice on completion list:
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" moves the first completion proposal instantly
inoremap <expr> <C-n> pumvisible() ? '<C-n>' : '<C-n><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'


" -----
" other
" -----
set backspace=2 " for backspace not deleting issue
