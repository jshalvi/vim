execute pathogen#infect()

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
set scrolloff=5
set shiftwidth=4
set sta
set tabstop=4

filetype plugin on
syntax on

" Mappings
map <F2> :!xmllint --valid --noout %<CR>
nnoremap <F3> :CommandT<CR>
inoremap <F5> <C-R>=strftime("%m/%d/%Y - ")<CR>
inoremap <F6> <C-R>=strftime("%m/%d/%Y - %T - ")<CR>
map <F7> :NERDTreeToggle<CR>
nnoremap <F10> :set hls<CR>:exec "let @/='\\<".expand("<cword>")."\\>'"<CR>
nnoremap <F11> :nohls<CR>

abbr cons console.log
