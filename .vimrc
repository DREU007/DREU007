"""""""""""""""""""
""  Vundle START ""
"""""""""""""""""""
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'


"""""""""""""""""""""
""  Plugins START  ""
"""""""""""""""""""""
Plugin 'preservim/nerdtree'		" https://github.com/preservim/nerdtree
Plugin 'mattn/emmet-vim'		" https://github.com/mattn/emmet-vim
Plugin 'dylanaraps/wal.vim'		" https://github.com/dylanaraps/wal.vim
Plugin 'vitalk/vim-simple-todo'		" https://github.com/vitalk/vim-simple-todo
Plugin 'dense-analysis/ale'		" https://github.com/dense-analysis/ale
Plugin 'vim-airline/vim-airline'	" https://github.com/vim-airline/vim-airline

Plugin 'ycm-core/YouCompleteMe'		" https://github.com/ycm-core/YouCompleteMe
" After install:
" cd .vim/bundle/YouCompleteMe/
" python3 setup

Plugin 'rrethy/vim-hexokinase'		" https://github.com/RRethy/vim-hexokinase
" After install:
" cd .vim/bundle/vim-hexokinase/
" make hexokinase

Plugin 'junegunn/fzf'			" https://github.com/junegunn/fzf.vim 
Plugin 'junegunn/fzf.vim'

Plugin 'wakatime/vim-wakatime'		" https://wakatime.com/vim
Plugin 'dreu007/SimpylFold'		" https://github.com/tmhedberg/SimpylFold is origin
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""
""  Plugins END  ""
"""""""""""""""""""
" All of your Plugins must be added before the following line
call vundle#end()            " required

filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on


""""""""""""""""
""  Commands  ""
""""""""""""""""
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


""""""""""""""""""
""  Vundle END  ""
""""""""""""""""""


"""""""""""""""""""""
""  VIM D7 config  ""
"""""""""""""""""""""

"""""""""""""""
""  General  ""
"""""""""""""""
" colorscheme default " default setting
colorscheme wal " pywal is required: `pip install --user pywal`
syntax on
set number

set ai
set belloff=all

set clipboard=unnamedplus


" Highlight length limit of the line if extended
" Highlight: 80; Break_line: 100;
highlight ColorColumn ctermbg=magenta
call matchadd('ColorColumn', '\%80v', 100)
"
" Highlisht all matched elements
set hlsearch
"
" Change layout to US  on ESC
:set langmap=ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯ;ABCDEFGHIJKLMNOPQRSTUVWXYZ,фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz

" vim-hexokinase / color support
set termguicolors
let g:Hexokinase_highlighters = ['backgroundfull']


"""""""""""""""""""""""""
""  Python, HTML, CSS  ""
"""""""""""""""""""""""""
" set autoindent
autocmd FileType python setlocal shiftwidth=4 expandtab smartindent 
autocmd BufNewFile,BufRead *.html,*.css setlocal tabstop=2 shiftwidth=2 softtabstop=2 smartindent


" Insert open_close symbols 
"inoremap ( ()<Esc>i
"inoremap { {}<Esc>i
"inoremap [ []<Esc>i
"inoremap ' ''<Esc>i
"inoremap " ""<Esc>i

set omnifunc=syntaxcomplete#Complete
autocmd FileType python map <buffer> <F9> :w<CR>:exec '!python3' shellescape(@%, 1)<CR>
autocmd FileType python imap <buffer> <F9> <esc>:w<CR>:exec '!python3' shellescape(@%, 1)<CR>


" Make venv visiable for YCM
let g:ycm_python_binary_path = 'python'

" toggle hover info with F3
map <F3> <plug>(YCMHover)

" ALE
let g:ale_linters = {
\   'python': ['flake8'],
\}
let g:ale_linters_explicit = 1
let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
"\   'python': ['black'],
\}
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_insert_leave = 0


" fzf & ripgrep config
set grepprg=rg\ --vimgrep\ --smart-case\ --hidden\ --follow

" Wayland workaroun for Cliboard copy and paste
xnoremap "+y y:call system("wl-copy", @")<cr>
nnoremap "+p :let @"=substitute(system("wl-paste --no-newline"), '<C-v><C-m>', '', 'g')<cr>p
nnoremap "*p :let @"=substitute(system("wl-paste --no-newline --primary"), '<C-v><C-m>', '', 'g')<cr>p

" Vim airline
" let g:airline_symbols_ascii = 1
