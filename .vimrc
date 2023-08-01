" >>> Star of Vundle Connfig <<<

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" >>> Plugins: <<<
Plugin 'ycm-core/YouCompleteMe' " Python autocompletion and suggestions for VIM


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" >>> End of Vundle Connfig <<<

" >>>>>> VIM D7 config <<<<<<

set autoindent
"set tabstop=4
set shiftwidth=4 smarttab
set tabstop=8 softtabstop=0
colorscheme default
set ai
syntax on
set belloff=all
set number

"inoremap ( ()<Esc>i
"inoremap { {}<Esc>i
"inoremap [ []<Esc>i
"inoremap ' ''<Esc>i
"inoremap " ""<Esc>i
filetype plugin on
set omnifunc=syntaxcomplete#Complete
autocmd FileType python map <buffer> <F9> :w<CR>:exec '!python3' shellescape(@%, 1)<CR>
autocmd FileType python imap <buffer> <F9> <esc>:w<CR>:exec '!python3' shellescape(@%, 1)<CR>

set clipboard=unnamedplus

highlight ColorColumn ctermbg=magenta
call matchadd('ColorColumn', '\%80v', 100)

