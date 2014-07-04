call pathogen#infect()

set t_Co=256
syn on
set number
"set background=dark
set tabstop=4
"set softtabstop=2
set shiftwidth=4
set expandtab
"set autoindent
color blazer
set colorcolumn=80 "set cc=80
highlight ColorColumn ctermbg=234

set listchars=tab:→\ ,trail:~,nbsp:_
set list
hi SpecialKey ctermfg=24

"GitGutter
set updatetime=750
highlight clear SignColumn

"au[tocmd]
"au BufNewFile,BufRead *.c,*.h set formatprg=indent\ -nut\ -fca\ -br\ -npcs\ -ce\ -brf\ -npsl
"au BufNewFile,BufRead *.c,*.h set formatprg=indent\ -gnu -nut
au BufNewFile,BufRead *.c,*.h set formatprg=indent
au BufNewFile,BufRead *.c,*.h set ai
au BufNewFile,BufRead *.md set filetype=mkd tw=80
au BufNewFile,BufRead *.mail,~/.mutttmp/mutt-* set tw=72
au BufNewFile,BufRead COMMIT_EDITMSG set tw=72
au FileType make set noet
"au! Syntax mkd source $VIM/mkd.vim
