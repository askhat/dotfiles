" Disable Ex mode
nnoremap Q <Nop>

"" Intetactions
map      ; :
imap     jj <esc>
noremap  zz :w<cr>
inoremap zz <esc>:w<cr>
inoremap ZZ <esc>:wq<cr>
" Tabs
map tt :tabnew<cr>
map tg :tabprev<cr>
map t^ :tabfirst<cr>
map t$ :tablast<cr>

"" Leaders
" Insert pry binding
" TODO check filetype and use appropriate statement
map  <leader>pp :startinsert<cr><cr>binding.pry<esc>
imap <leader>pp <cr>binding.pry<esc>
" Open GitUp
map  <leader>gu :!gitup open<cr><cr>


"" Plugins
map <C-t> :NERDTreeToggle<cr>
map <F5>  :AirlineRefresh<cr>
map <F8>  :TagbarToggle<cr>
" Tabular
map <leader>= :Tab /=<cr>
map <leader>" :Tab /"<cr>
map <leader>: :Tab /:<cr>
map <leader>{ :Tab /{<cr>
map <leader>f :Tab /from<cr>
map <leader>t :Tab /type<cr>

