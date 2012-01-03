let mapleader="," " Use comma instead of \ for <Leader>

let CommandTMaxCachedDirectories=0

" allow NrrwRgn have multiple narrowed regions and still write back changes
let g:nrrw_rgn_protect = 'n'

call pathogen#infect()
call pathogen#helptags()

colorscheme desert

set hidden	" allow hidden buffers
set ruler	" show the cursor position all the time
set hlsearch	" enable search highlighting
set showmatch	" cursor shows matching ) and }
set showmode	" show current mode
set ignorecase	" ignore case when searching
set smartcase	" overwrite ignorecase option if uppercase used in search
set nowrap	" disable automatic line wrapping
set incsearch	" highlights as you type search string

filetype indent plugin on " enable all filetype related detections

syntax on " enable syntax highlighting

set laststatus=2	" always have status line

" tab navigation like firefox
nmap <C-S-tab> :tabprevious<cr>
nmap <C-tab> :tabnext<cr>
map <C-S-tab> :tabprevious<cr>
map <C-tab> :tabnext<cr>
imap <C-S-tab> <ESC>:tabprevious<cr>i
imap <C-tab> <ESC>:tabnext<cr>i
nmap <C-t> :tabnew<cr>
imap <C-t> <ESC>:tabnew<cr>

" NERDTree keyboard shortcuts
map <Leader>nt :NERDTreeToggle<cr>

" toggle Gundo
map <Leader>gu :GundoToggle<cr>

" Tagbar shortcuts
map <Leader>rt :TagbarToggle<cr>

" autocomplete
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
