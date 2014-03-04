:set nu
:set tabstop=2
:set shiftwidth=2
:set hls
:syntax on
:set autoindent
:set omnifunc=syntaxcomplete#Complete
:set foldmethod=manual
:set cursorline
:set expandtab
:colorscheme candyVirus
:hi Directory guifg=#FF0000 ctermfg=yellow

autocmd FileType php noremap &lt;C-L&gt; :!/usr/bin/env php -l %&lt;CR&gt;
autocmd FileType phtml noremap &lt;C-L&gt; :!/usr/bin/env php -l 

:set statusline=%t       "tail of the filename
:set statusline+=[%{strlen(&fenc)?&fenc:'none'}, "file encoding
:set statusline+=%{&ff}] "file format
:set statusline+=%h      "help file flag
:set statusline+=%m      "modified flag
:set statusline+=%r      "read only flag
:set statusline+=%y      "filetype
:set statusline+=%=      "left/right separator
:set statusline+=%c,     "cursor column
:set statusline+=%l/%L   "cursor line/total lines
:set statusline+=\ %P    "percent through file

:set mouse=a


set nocompatible              " be iMproved
filetype off                  " required

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'tpope/vim-commentary'
Bundle 'scrooloose/nerdtree'
Bundle 'StanAngeloff/php.vim'

filetype plugin indent on     " required!

