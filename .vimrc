syntax on
filetype plugin indent on

set number

set tabstop=4
set shiftwidth=4
set expandtab

set hlsearch
set incsearch
set ignorecase
set smartcase

set cursorline          " Υπογράμμιση της τρέχουσας γραμμής
set wildmenu            " Καλύτερο μενού εντολών με Tab
call plug#begin('~/.vim/plugged')
Plug 'preservim/nerdtree'
Plug 'morhetz/gruvbox'
call plug#end()
nnoremap <C-n> :NERDTreeToggle<CR>
autocmd vimenter * colorscheme gruvbox
set background=dark
set mouse=a
" Copy στο system clipboard με Ctrl+c
vnoremap <C-c> :w !xclip -sel clip<CR><CR>
" Paste από το system clipboard με Ctrl+v (στο Normal mode)
nnoremap <C-v> :read !xclip -sel clip -o<CR>
