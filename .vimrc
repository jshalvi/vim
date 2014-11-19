execute pathogen#infect()
call pathogen#helptags()

filetype plugin on

" Source-specific settings
autocmd BufRead *.mxml set tabstop=4
autocmd BufRead *.mxml set filetype=mxml
autocmd BufRead *.as set filetype=actionscript
autocmd BufRead *.js set shiftwidth=4
autocmd BufRead *.json set syntax=javascript
autocmd BufRead *.gradle set syntax=groovy

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
nnoremap <F3> :CtrlP<CR>
" <F4> used by qbuf
inoremap <F5> <C-R>=strftime("%m/%d/%Y - ")<CR>
inoremap <F6> <C-R>=strftime("%m/%d/%Y - %T - ")<CR>
map <F7> :NERDTreeToggle<CR>
nnoremap <F8> :CtrlP src/main/webapp<CR>
nnoremap <F10> :set hls<CR>:exec "let @/='\\<".expand("<cword>")."\\>'"<CR>
nnoremap <F11> :nohls<CR>

"" Plugin configurations

" SnipMate
let g:snipMate = {}
let g:snipMate.scope_aliases = {} 
let g:snipMate.scope_aliases['jsp'] = 'jsp, html'

" JSHint
let jshint2_save = 1

" localvimrc
let g:localvimrc_whitelist='/\(Users\|home\)/jshalvi/.lvimrc'
let g:localvimrc_sandbox=0

" CtrlP
let g:ctrlp_custom_ignore = {
    \ 'dir':  '(bower_components|POS|node_module|build|bin|config)'
    \ }

func! WordProcessorMode() 
  setlocal formatoptions=1 
  setlocal noexpandtab 
  map j gj 
  map k gk
  setlocal spell spelllang=en_us 
  set thesaurus+=/Users/sbrown/.vim/thesaurus/mthesaur.txt
  set complete+=s
  set formatprg=par
  setlocal wrap 
  setlocal linebreak 
  color solarized
endfu 
com! WP call WordProcessorMode()

set backupdir=~/tmp,.,~/
