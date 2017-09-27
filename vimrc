"
" TODO: Add description
"

set nocompatible
filetype plugin indent on
syntax enable

set ttyfast
set lazyredraw
set synmaxcol=80
set conceallevel=1
set rtp+=/usr/local/opt/fzf


set langmenu=en_US.UTF-8
let $LANG='en'
set langmap+=ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯ;ABCDEFGHIJKLMNOPQRSTUVWXYZ
set langmap+=фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz

set undodir=$HOME/.vim/changes
set undofile
set backup
set backupdir=~/.vim/backup
set dir=~/.vim/backup

au CursorMoved * checktime " Reload externally changed file

call plug#begin('$HOME/.vim/plugged')
  source $HOME/.vim/plugins.vim
call plug#end()

for file in split(glob('$HOME/.vim/config/*.vim'), '\n')
  exe 'source' file
endfor

au! BufWritePost .vimrc,*.vim so $MYVIMRC | AirlineRefresh

let g:plist_display_format = 'xml'

let g:ctrlp_custom_ignore = '\v[\/](vendor|node_modules|\.git)$'

let g:airline_powerline_fonts                      = 1
let g:airline#extensions#tabline#enabled           = 1
let g:airline#extensions#tabline#show_buffers      = 0
let g:airline#extensions#tabline#show_splits       = 0
let g:airline#extensions#tabline#show_tab_type     = 0
let g:airline#extensions#tabline#show_close_button = 0

let g:tmuxline_preset = {
  \'a'      : '#S',
  \'win'    : '#I #W',
  \'cwin'   : '#I #W',
  \'z'      : ['#(batt)', '#(/Sy*/L*/Priv*/Apple8*/V*/C*/R*/airport -I | grep -w SSID | cut -d ":" -f 2)'],
  \'options': {'status-justify': 'left'}
\}
