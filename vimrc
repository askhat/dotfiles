set nocompatible
filetype plugin indent on
syntax enable

set ttyfast
set lazyredraw

set synmaxcol=180

set langmenu=en_US.UTF-8
let $LANG='en'

" Import plugins
call plug#begin('$HOME/.vim/plugged')
  source $HOME/.vim/plugins.vim
call plug#end()

" Import configs
for file in split(glob('$HOME/.vim/config/*.vim'), '\n')
  exe 'source' file
endfor

" Reload $MYVIMRC when changes occur
au! BufWritePost .vimrc,*.vim so $MYVIMRC | AirlineRefresh

au BufRead,BufNewFile *.vue     setlocal filetype=vue
au BufRead,BufNewFile *.js      setlocal filetype=javascript
au BufNewFile,BufRead *_spec.rb setlocal syntax=rspec

let g:used_javascript_libs = 'vue'

au CursorMoved * checktime " Reload externally changed file
"set autoread               " And don't hesitate about it

" Persist changes
set undodir=$HOME/.vim/undo_history
set undofile
" swp and swo
set backup
set backupdir=~/.vim/backup
set dir=~/.vim/backup

" Comrade commando
set langmap=ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯ;ABCDEFGHIJKLMNOPQRSTUVWXYZ,фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz


let g:ctrlp_custom_ignore = '\v[\/](vendor|node_modules|\.git)$'

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 1
" let g:syntastic_check_on_wq = 0

let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_javascript_eslint_exec = 'eslint_d'

" let g:syntastic_pug_checkers = ['pug_lint']

" let g:jsx_ext_required = 0
let g:xml_syntax_folding = 1
