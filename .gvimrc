set gfn=Menlo:h13
set et
syntax enable
colors hemisu
set nohls
set noeb

winpos 0 0
set lines=50
set columns=175
set guioptions-=rl
set guioptions-=T

nmap <silent> <F3> :CommandT<CR>
let g:qb_hotkey = "<F4>" 
inoremap <F5> <C-R>=strftime("%m/%d/%Y - ")<CR>
nmap <silent> <F6> :TlistToggle<CR>
nmap <silent> <F7> :NERDTreeToggle<CR>
nmap <silent> <F8> :exe PhpDoc()<CR>
source ~/vimfiles/plugin/qbuf.vim
source ~\vimfiles\plugin\php-doc.vim

source ~/vimfiles/plugin/vcscommand.vim
source ~/vimfiles/plugin/vcssvn.vim

" highlight Comment gui=italic
" match Error80            /\%>80v.\+/    " highlight anything past 80 in red

abbreviate jq jQuery
abbreviate cons console.log
abbreviate fire FirePHP::getInstance(true)->log

" Disable auto-commenting
au FileType * setl fo-=cro
nnoremap <F10> :set hls<CR>:exec "let @/='\\<".expand("<cword>")."\\>'"<CR>
nnoremap <F11> :nohls<CR>

autocmd BufRead *.txt set linebreak
autocmd BufRead *.md set linebreak
autocmd BufRead *.txt syntax off 
