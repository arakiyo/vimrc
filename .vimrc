"---------------------------
"" Start Neobundle Settings.
"---------------------------
"" bundleで管理するディレクトリを指定
set runtimepath+=~/.vim/bundle/neobundle.vim/

" Required:
call neobundle#begin(expand('~/.vim/bundle/'))

" neobundle自体をneobundleで管理
NeoBundleFetch 'Shougo/neobundle.vim'
NeoBundle 'scrooloose/syntastic.git'

let g:syntastic_enable_signs=1
let g:syntastic_auto_loc_list=0
let g:syntastic_php_checkers=['phpcs']
let g:syntastic_php_phpcs_args='--standard=psr1'

call neobundle#end()

" Required:
filetype plugin indent on
NeoBundleCheck

"-------------------------
" End Neobundle Settings.
"-------------------------

syntax on
set title
set number
set expandtab
set tabstop=2
set autoindent
set shiftwidth=4
set backspace=indent,eol,start

autocmd BufWritePre * :%s/\s\+$//e
