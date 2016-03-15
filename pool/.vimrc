" install dependencies: pacman -S vim-airline vim-nerdtree vim-syntastic vim-csv-git

filetype plugin on
syntax on
" Line numbers
set number
set smartindent
" Use spaces instead of tabs
set expandtab
" Set tab width to 4
set tabstop=4
set shiftwidth=4
set history=100
" Always show status line
set laststatus=2

" Enable 256 colors
set t_Co=256

set switchbuf=usetab

" Airline configuration
let g:airline_left_sep=' > '
let g:airline_right_sep=' < '
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

" Syntax checking
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Key mappings
nmap ,n :NERDTree<cr>
nnoremap <C-Right> :sbnext<cr>
nnoremap <C-Left> :sbprevious<cr>

" csv stuff
let b:csv_arrange_leftalign = 1

aug CSV_Editing
    au!
    au BufRead,BufWritePost *.csv :%ArrangeColumn
    au BufWritePre *csv :%UnArrangeColumn
aug end

