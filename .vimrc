execute pathogen#infect()
call pathogen#helptags()

" au FileType xml exe ":silent %!xmllint --format --recover - 2>/dev/null"

set directory=$HOME/.vim/swapfiles//

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
syntax enable

abbreviate jq jQuery
abbreviate cons console.log
abbreviate jash jash.print

"" F Key Mappings

" <F2>
map <F2> :!xmllint --valid --noout %<CR>
" <F3>
nnoremap <F3> :CtrlP<CR>
" <F4>
" used by qbuf
" <F5>
inoremap <F5> <C-R>=strftime("%m/%d/%Y - ")<CR>
" <F6>
inoremap <F6> <C-R>=strftime("%m/%d/%Y - %T - ")<CR>
" <F7>
map <F7> :NERDTreeToggle<CR>
" <F8>
nnoremap <F8> :CtrlP .<CR>
" <F9>
" <F10>
nnoremap <F10> :set hls<CR>:exec "let @/='\\<".expand("<cword>")."\\>'"<CR>
" <F11>
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
  \ 'dir':  '\.git$\|node_modules\|log\|target\|tmp$',
  \ 'file': '\v\.(jar|iml|iws|ipr|gz|exe|so|dll)$'
  \ }

" Markdown
let g:vim_markdown_folding_disabled = 1
