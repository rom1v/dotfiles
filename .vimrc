"filetype plugin on

set t_Co=256
syn on
set number
set mouse=a
"set background=dark
set tabstop=4
"set softtabstop=2
set shiftwidth=4
set expandtab
set autoindent
"color hybrid
color jellybeans "hybrid mustang xoria256 bvemu miko fu candyman kkruby jellybeans desert256 blazer busierbee
if &diff | colors hybrid | endif
set bg=dark
set colorcolumn=80 "set cc=80
highlight ColorColumn ctermbg=236 "234

set undofile
set undodir=~/.cache/vim

set listchars=tab:>-,trail:~,nbsp:_
set list
hi SpecialKey ctermfg=24 ctermbg=none

"on vim-gtk, share the clipboard with the environment
set clipboard=unnamed

"GitGutter
"set updatetime=750
highlight clear SignColumn

"au[tocmd]
"au BufNewFile,BufRead *.c,*.h,*.cpp set formatprg=indent\ -linux\ -nut\ -fca\ -br\ -npcs\ -ce\ -brf\ -npsl\ -i4\ -sc
"au BufNewFile,BufRead *.c,*.h,*.cpp set formatprg=indent\ -gnu\ -nut
"au BufNewFile,BufRead *.c,*.h,*.cpp set formatprg=indent\ -linux
au BufNewFile,BufRead *.c,*.h,*.cpp set ai
au BufNewFile,BufRead *.qml set syntax=javascript
au BufNewFile,BufRead *.md set filetype=mkd tw=80 et ts=4 sw=4
au BufNewFile,BufRead *.yaml set filetype=mkd tw=76 et ts=4 sw=4
au BufNewFile,BufRead *.mail,~/.mutttmp/mutt-* set tw=72 cc=72
au FileType gitcommit set tw=72 cc=72
au BufNewFile,BufRead ~/projects/rav1e/*.rs set et ts=2 sw=2
au FileType make set noet
autocmd BufRead *.rs :setlocal tags=./rusty-tags.vi;/
autocmd BufWritePost *.rs :silent! exec "!rusty-tags vi --quiet --start-dir=" . expand('%:p:h') . "& >2 /dev/null" | redraw!
"au! Syntax mkd source $VIM/mkd.vim

" map FSwitch (between .c/.cpp and .h) to \of
nmap <silent> <F4> :FSHere<CR>
map <silent> <F9> :NERDTree<CR>
map <silent> <S-F9> :NERDTreeFind<CR>
nmap <silent> <F8> :TlistToggle<CR>
nnoremap <F6> :set nopaste<CR>
nnoremap <F7> :set paste<CR>

" http://vim.wikia.com/wiki/Alternative_tab_navigation
nnoremap tn :tabnext<CR>
nnoremap tp :tabprevious<CR>
nnoremap tc :tabnew<CR>
nnoremap td :tabclose<CR>
nnoremap te :tabedit<Space>
nnoremap tg :tabnext<Space>

""""""""""""""""""""""""""""""""""""""""""""""""""
"Omni-completion par CTRL-X_CTRL-O
"""""""""""""""""""""""""""""""""""""""""""""""""""
"filetype plugin on
"set omnifunc=syntaxcomplete#Complete
"set nocp
"let OmniCpp_ShowAccess = 0
"let OmniCpp_LocalSearchDecl=1
"let OmniCpp_MayCompleteDot = 1 " autocomplete after .
"let OmniCpp_MayCompleteArrow = 1 " autocomplete after ->
"let OmniCpp_MayCompleteScope = 1 " autocomplete after ::
set path=.,..,/usr/local/include,/usr/include

map <C-A-S-F8> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>
map <C-S-F8> :!cscope -bqR<CR>

"set rtp+=/usr/bin/fzf

imap jj <Esc>
nnoremap <PageUp> <Nop>
nnoremap <PageDown> <Nop>
