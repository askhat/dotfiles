set background=dark
" Guifont Monaco_for_Powerline:h11

if has('gui_running')
  set background=light
  set guifont=Monaco_for_Powerline:h11
  " Remove scrollbars
  set guioptions-=r
  set guioptions-=L
endif
if (&background=='light')
  colorscheme solarized
  let g:airline_theme='solarized'
endif
if (&background=='dark')
  set termguicolors
  hi CursorLine cterm=NONE   guibg=grey5
  hi Todo       guifg=yellow guibg=NONE
  hi SignColumn guifg=NONE   guibg=NONE
  hi LineNr     guifg=NONE   guibg=NONE
  hi Pmenu      guifg=grey50 guibg=grey5
  hi PmenuSel   guifg=grey50 guibg=grey10
  hi Folded     guifg=grey50 guibg=NONE
endif

set updatetime=250

" Always show bottom bar
set laststatus=2

" Indent
set nowrap
set expandtab    " No tabs allowed
set shiftwidth=2 " Auto indent
set tabstop=2    " Manual indent

" Foldings
set fdm=syntax        " Folds according to syntax
set foldlevelstart=20 " Open folds by default

set cursorline
" Line numbers
set number
set relativenumber

" Whitespace characters
set list
set listchars=tab:›\ ,trail:●,extends:#,nbsp:.

" Airline settings
let g:airline_powerline_fonts                      = 1
let g:airline#extensions#tabline#enabled           = 1
let g:airline#extensions#tabline#show_buffers      = 0
let g:airline#extensions#tabline#show_splits       = 0
let g:airline#extensions#tabline#show_tab_type     = 0
let g:airline#extensions#tabline#show_close_button = 0

" Tmuxline settings
let g:tmuxline_preset = {
  \'a'      : '#S',
  \'win'    : '#I #W',
  \'cwin'   : '#I #W',
  \'z'      : ['#(batt)', '#(/Sy*/L*/Priv*/Apple8*/V*/C*/R*/airport -I | grep -w SSID | cut -d ":" -f 2)'],
  \'options': {'status-justify': 'left'}
\}
