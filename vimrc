call pathogen#infect()
call pathogen#helptags()

colorscheme desert

set ruler	" show the cursor position all the time
set hlsearch	" enable search highlighting
set showmatch	" cursor shows matching ) and }
set showmode	" show current mode
set ignorecase	" ignore case when searching
set smartcase	" overwrite ignorecase option if uppercase used in search

filetype indent plugin on " enable all filetype related detections

syntax on " enable syntax highlighting

set clipboard=unnamedplus " yank to the clipboard (register "+) by default

" tab navigation like firefox
nmap <C-S-tab> :tabprevious<cr>
nmap <C-tab> :tabnext<cr>
map <C-S-tab> :tabprevious<cr>
map <C-tab> :tabnext<cr>
imap <C-S-tab> <ESC>:tabprevious<cr>i
imap <C-tab> <ESC>:tabnext<cr>i
nmap <C-t> :tabnew<cr>
imap <C-t> <ESC>:tabnew<cr> 
