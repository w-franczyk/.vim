" workaround to load python3 instead of python2
if has('python3')
endif

" pathogen
execute pathogen#infect()

" ------------
" key bindings
" ------------
" leader
let mapleader = ","
" NERDTreeTabs
map <Leader>n <plug>NERDTreeTabsToggle<CR>
" fzf find file
noremap <C-f> :Files<CR>
" fzf find in file (grep -R like)
noremap <C-d> :Rg 
" fzf show windows
noremap <C-w><Up> :Windows<CR>
" fzf show buffers
noremap <Leader>b :Buffers<CR>
" fzf show mappings
" :Maps

" mouse
set mouse=a

" apperance
set background=dark       " dark...
let g:gruvbox_italic=1    " ...italic on...
colorscheme gruvbox       " ...gruvbox
set cursorline            " highlight line
set number                " line numbers
set hlsearch              " highlight search

" ---------
" clipboard
" ---------
set clipboard=unnamedplus

" -----------------------
" indexing and completion
" -----------------------
"autocmd Filetype c,cpp autocmd BufWritePost,FileWritePost,FileAppendPost <buffer> call rtags#ReindexFile()
"set completefunc=RtagsCompleteFunc

" enter confirms the choice on completion list:
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" moves the first completion proposal instantly
inoremap <expr> <C-n> pumvisible() ? '<C-n>' : '<C-n><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'

" Let clangd fully control code completion
let g:ycm_clangd_uses_ycmd_caching = 0
" Use installed clangd, not YCM-bundled clangd which doesn't get updates.
let g:ycm_clangd_binary_path = '/home/wfranczyk/tools/clang13-64/bin/clangd'
" let g:ycm_clangd_args = ['-log=verbose', '-pretty']

" disable the doc popup after delay
let g:ycm_auto_hover = ''

" the doc popup toggle
nmap <leader>q <plug>(YCMHover)

" find symbol
noremap <leader>f :YcmCompleter GoToSymbol 

noremap <leader>rj :YcmCompleter GoTo<CR>
noremap <leader>rt :tab YcmCompleter GoTo<CR>
noremap <leader>rs :split \| YcmCompleter GoTo<CR>
noremap <leader>rv :vsplit \| YcmCompleter GoTo<CR>
noremap <leader>rd :YcmCompleter GetDoc<CR>
" Open quickfix list (:copen, CTRL+W, enter) to see all changes
noremap <leader>rr :YcmCompleter RefactorRename 
noremap <leader>rc :YcmCompleter GoToCallers<CR>
noremap <leader>rf :YcmCompleter GoToReferences<CR>
noremap <leader>rf :YcmCompleter GoToReferences<CR>

" close preview window after accept of the completion proposal
let g:ycm_autoclose_preview_window_after_completion = 1

" GoTo commands behavior
let g:ycm_goto_buffer_command = 'same-buffer'



" -----
" other
" -----
set backspace=2 " for backspace not deleting issue
setlocal fileformat=unix " unix-style CR, not windows' CRLF
set laststatus=2 " enable Lightline footer with status
set noshowmode   " since there is Lightline we don't need default vim 'show mode'
set shortmess=I " disable intro message

" --------------------------
" project specific variables
" --------------------------
let project="arworkspace"
execute "source ~/.vim/projects/" . project . "/vimrc"

" --------------------------
"  tips and tricks
" --------------------------
"  - in nerd tree, type 'cd' to change current path (:cd), type 'CD' to change
"  root to :pwd
