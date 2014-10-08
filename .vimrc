execute pathogen#infect()
call pathogen#helptags()

filetype plugin on

" Source-specific settings
autocmd BufRead *.mxml set tabstop=4
autocmd BufRead *.mxml set filetype=mxml
autocmd BufRead *.as set filetype=actionscript
autocmd BufRead *.js set shiftwidth=4

" Disable auto-commenting
au FileType * setl fo-=cro

set autoindent
set et
set ignorecase
set nohlsearch
set number
set ruler
set smartcase
set scrolloff=5
set shiftwidth=4
set sta
set tabstop=4
set backupdir=~/tmp

filetype plugin on
syntax on
syntax enable

abbreviate jq jQuery
abbreviate cons console.log
abbreviate jash jash.print

" Mappings
map <F2> :!xmllint --valid --noout %<CR>
nnoremap <F3> :CommandT<CR>
" <F4> used by qbuf
inoremap <F5> <C-R>=strftime("%m/%d/%Y - ")<CR>
inoremap <F6> <C-R>=strftime("%m/%d/%Y - %T - ")<CR>
map <F7> :NERDTreeToggle<CR>
nnoremap <F10> :set hls<CR>:exec "let @/='\\<".expand("<cword>")."\\>'"<CR>
nnoremap <F11> :nohls<CR>

let g:snipMate = {}
let g:snipMate.scope_aliases = {} 
let g:snipMate.scope_aliases['jsp'] = 'jsp, html'

let jshint2_save = 1

let g:localvimrc_whitelist='/\(Users\|home\)/jshalvi/.lvimrc'
let g:localvimrc_sandbox=0
