"Identify the OS"
if(has("win32") || has("win95") || has("win64") || has("win16"))
    let g:iswindows = 1
else
    let g:iswindows = 0
endif

"Set filetype"
set fileformat=unix

"*************************Setup for vundle********************************
set nocompatible 
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

 " let Vundle manage Vundle
 " required! 
Plugin 'gmarik/Vundle.vim'

"My bundles here:
"
"Original repos on github
Plugin 'vim-scripts/c.vim'
Plugin 'tpope/vim-surround'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/syntastic'
Plugin 'flazz/vim-colorschemes'
Plugin 'vim-scripts/AutoClose'
Plugin 'techlivezheng/vim-plugin-minibufexpl'
Plugin 'Valloric/YouCompleteMe'
Plugin 'majutsushi/tagbar'
Plugin 'scrooloose/nerdtree'
"for go development"
Plugin 'fatih/vim-go'

"rust"
Plugin 'wting/rust.vim'

"scala"
Plugin 'derekwyatt/vim-scala'

"for xml
Plugin 'sukima/xmledit.git'
"Install bundles: ':PluginInstall'"


call vundle#end() 

"Set autoindent"
filetype plugin indent on

"**************************vundle setup finishes*************************

"Setup color scheme"
colorscheme molokai
set background=dark
let g:solarized_termcolors=256



autocmd BufEnter * lcd %:p:h

"Setup the font"
set guifont=DejaVu\ Sans\ Mono\ 12

"Setup wrapping"
set whichwrap=b,s,h,l,<,>,[,]

"Setup encoding and language"
set encoding=utf-8

"Setup encoding"
set fileencodings=utf-8,big5,gbk,latin1,euc-jp,iso-2022-jp

"Setup input customization"
set shiftwidth=4    "auto indent for 4 spaces"
set tabstop=4    "set one tab for 4 spaces"
set et      "replace all tabs with spaces"
set smarttab	"erase one tab by only one backspace"

set nowrap 	"No auto wrap"
set lbr 	"not auto wrap within words"

"Setup for coding"
set sm		"auto jump to the head of the back barace"
set cin		"indentation in c style"
set number


"Setup auto spell checking"
au BufRead *.md setlocal spell


set foldmethod=indent
set foldlevel=99

"fix arrows navigation in insert mode"
":set term=builtin_ansi

"python autocompletion"
au FileType python set omnifunc=pythoncomplete#Complete
let g:SuperTabDefaultCompletionType="context"

"Syntax highlight"
syntax enable

"enable filetype"
filetype on

set autoindent

"work with clipboard"
set clipboard=unnamed

"enable backspace"
set nocompatible
set backspace=2
"key mapping"
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h

map <F2> :ConqueTermSplit bash<CR>
map <F3> :Pydoc 

nmap <C-V> "+gP
imap <C-V> <ESC><C-V>a 
vmap <C-C> "+y
"----------------------Setting for Plugins-----------------------------------"
let g:syntastic_cpp_check_header = 1
let g:ycm_register_as_syntastic_checker = 0
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'

"disable completion preview"
set completeopt-=preview

"---------------------Tagbar-------------------------------------------"
nmap <F8> :TagbarToggle<CR>
"-----------------------------PyDict-----------------------------------------"
"
let g:syntastic_java_javac_config_file_enabled=1

"------------------- for Go development --------------------------------"
"let g:syntastic_disabled_filetypes=['go']
let g:go_highlight_structs = 1
"autocmd BufWritePost,FileWritePost *.go execute 'GoErrCheck' |cwindow
"autocmd BufWritePost,FileWritePost *.go execute 'GoLint' | cwindow
