let s:uname = system("echo -n \"$(uname)\"")

if !v:shell_error && s:uname == "Linux"
"	source $VIMRUNTIME/mswin.vim
endif

let mapleader="," " Use comma instead of \ for <Leader>

let CommandTMaxCachedDirectories=0

" allow NrrwRgn have multiple narrowed regions and still write back changes
let g:nrrw_rgn_protect = 'n'

call pathogen#infect()
call pathogen#helptags()

if has("gui_running")
    colorscheme wombat
else
    colorscheme wombat256
endif

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

" Remap escape
inoremap jk <ESC>

set listchars=tab:»·,trail:·

set go-=T " remove gvim toolbar

set gfn=Consolas\ 12

set expandtab
set tabstop=4
set shiftwidth=4

autocmd BufEnter *.hs compiler ghc
let g:haddock_browser = "/usr/bin/google-chrome"
let g:ghc = "/usr/bin/ghc"

autocmd BufEnter *.cljs set filetype=clojure
let g:vimclojure#HighlightBuiltins = 1
let g:vimclojure#ParenRainbow = 1

let g:slime_target = "tmux"

" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplcache.
let g:neocomplcache_enable_at_startup = 1
" Use smartcase.
let g:neocomplcache_enable_smart_case = 1
" Use camel case completion.
let g:neocomplcache_enable_camel_case_completion = 1
" Use underbar completion.
let g:neocomplcache_enable_underbar_completion = 1
" Set minimum syntax keyword length.
let g:neocomplcache_min_syntax_length = 3
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'

let g:notes_directories = ['~/Dropbox/Notes']
let g:notes_suffix = '.txt'
