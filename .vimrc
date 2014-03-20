syn on
set number
set background=dark
set tabstop=2
set shiftwidth=2
set expandtab
"set autoindent
set colorcolumn=80 "set cc=80
highlight ColorColumn ctermbg=52 "darkred

set listchars=tab:→\ ,trail:~,nbsp:_
set list

"au[tocmd]
au BufNewFile,BufRead *.c,*.h set formatprg=indent\ -nut\ -fca\ -br\ -npcs\ -ce\ -brf\ -npsl
au BufNewFile,BufRead *.md set filetype=mkd tw=80
au BufNewFile,BufRead *.mail,~/.mutttmp/mutt-* set tw=72
au BufNewFile,BufRead COMMIT_EDITMSG set tw=72
au FileType make set noet
"au! Syntax mkd source $VIM/mkd.vim
