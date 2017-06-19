call plug#begin('$HOME/.vim/plugged')

Plug 'equalsraf/neovim-gui-shim'

Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
" Plug 'scrooloose/syntastic'


Plug 'flazz/vim-colorschemes'

Plug 'raimondi/delimitmate'

Plug 'xolox/vim-easytags'
Plug 'xolox/vim-misc'

Plug 'vim-airline/vim-airline-themes'

Plug 'kien/ctrlp.vim'
Plug 'vimwiki/vimwiki'
Plug 'airblade/vim-gitgutter'
Plug 'edkolev/tmuxline.vim'
Plug 'vim-airline/vim-airline'
Plug 'christoomey/vim-tmux-navigator'
Plug 'godlygeek/tabular'
Plug 'terryma/vim-multiple-cursors'

Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-commentary'

Plug 'gabesoft/vim-ags'

Plug 'keith/rspec.vim',           { 'for': ['ruby', 'rspec'] }
Plug 'tpope/vim-endwise',         { 'for': 'ruby' }
Plug 'slim-template/vim-slim',    { 'for': 'slim' }
Plug 'elzr/vim-json',             { 'for': 'json' }
Plug 'posva/vim-vue',             { 'for': 'vue' }
" Plug 'pangloss/vim-javascript',   { 'for': 'vue' }
Plug 'othree/yajs.vim',           { 'for': ['javascript', 'vue'] }
Plug 'digitaltoad/vim-pug',       { 'for': ['pug', 'vue'] }
Plug 'mxw/vim-jsx',               { 'for': ['javascript', 'jsx']}

Plug 'dag/vim-fish',              { 'for': 'fish' }

Plug 'cespare/vim-toml',          { 'for': 'toml' }

call plug#end()
