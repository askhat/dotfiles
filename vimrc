"
" Askhat  Vimrc
" IIIrd edition
"

""""""""""""""""""""""""
" Welcome to the present
"
set nocompatible  " No country for old men
syntax on         " Bring colors to life
set termguicolors " Even more colors
set nowrap        " Dispalay is wide enough
set ttyfast       " Send more characters
set lazyredraw    " Redraw when necessary
filetype plugin indent on

"""""""""""""""
" Looks & Feels
"
set expandtab     " No tabs allowed
set shiftwidth=2  " Auto indent
set tabstop=2     " Manual indent
set number        " Show line numbers
set rnu           " And make it weird
set ruler         " Cursor coordinates
set laststatus=2  " Show bottom bar
set cursorline    " Emphasize current line
hi CursorLine cterm=NONE guibg=#121212

" Airline settings
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_buffers = 0
let g:airline#extensions#tabline#show_splits = 0
let g:airline#extensions#tabline#show_tab_type = 0
let g:airline#extensions#tabline#show_close_button = 0

"""""""""""
" Shortcuts
"
map <C-n> :NERDTreeToggle<cr> " Show tree
noremap zz :w<cr>             " Save file
inoremap zz <esc>:w<cr>       " z. put line to middle

""""""""""""""""""""""
" Tweaks are for geeks
"
au! BufWritePost .vimrc,*.vim so $MYVIMRC | AirlineRefresh " Reload config when changes occur

au CursorMoved * checktime " Reload externally changed file
"set autoread               " And don't hesitate about it

" Persist changes
set undodir=$HOME/.vim/undo_history
set undofile

" Comrade commando
set langmap=ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯ;ABCDEFGHIJKLMNOPQRSTUVWXYZ,фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz

call plug#begin('$HOME/.vim/plugged')
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'posva/vim-vue', { 'for': 'vue' }
Plug 'vim-airline/vim-airline'
call plug#end()
