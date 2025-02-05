set rnu nu
set cc=80

set tabstop=4
set softtabstop=4
set shiftwidth=4
set smartindent

autocmd FileType netrw setl bufhidden=delete

set nowrap

set nohlsearch
set incsearch

set termguicolors

set noswapfile
set nobackup
set undofile

set mouse-=a
set guicursor=i:block

set fillchars="eob: "
set signcolumn=no

set shortmess=filnxtToFW

let g:netrw_banner = 0
let g:netrw_bufsettings = "nu rnu nowrap"
let g:netrw_list_hide = "^\\./$,^\\.\\./$"

set noruler
set noshowcmd

let $dir = "/.vim/undodir"

if has("win32")
    let $dir = $UserProfile . $dir

    set shell=powershell.exe
    set shellxquote=""

    let &shellcmdflag = '-NoLogo -NoProfile -ExecutionPolicy RemoteSigned -Command '
    let &shellquote = ''
    let &shellpipe = '| Out-File -Encoding UTF8 %s'
    let &shellredir = '| Out-File -Encoding UTF8 %s'
else
    let $dir = $HOME . $dir
endif

set undodir=$dir

set clipboard="unnamedplus"

set nocompatible
set path=**
set wildmenu

highlight Normal guibg=none
highlight NonText guibg=none
highlight Normal ctermbg=none
highlight NonText ctermbg=none
