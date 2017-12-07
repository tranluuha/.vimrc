set nocompatible	"require
filetype off		"require
filetype plugin on
let mapleader=","
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Add all your plugins here (note older versions of Vundle used Bundle instead of Plugin)
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
"Bundle 'Valloric/YouCompleteMe'
"Plugin 'valloric/youcompleteme'
Plugin 'tpope/vim-fugitive'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdcommenter'
Plugin 'nvie/vim-flake8'
Plugin 'jnurmine/Zenburn'
Plugin 'altercation/vim-colors-solarized'
Plugin 'jistr/vim-nerdtree-tabs'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

"Set coloring schemes etc.
if has('gui_running')
  set background=dark
  colorscheme slate
else
  colorscheme zenburn
endif
call togglebg#map("<F5>")

"Setting encoding
set encoding=utf-8

"Splitting direction
set splitbelow
set splitright

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"window-like saving
nnoremap <C-S> :w<CR>

"custom mapping
imap <C-D> <C-O>dd
imap <C-E> <C-O>A

"window-like saving
inoremap <C-S> <C-O>:w<CR>

"abbreviation
iabbrev waht what
iabbrev tehn then

"Test dvorakmap
"set langmap='q,\\,w,.e,pr,yt,fy,gu,ci,ro,lp,/[,=],aa,os,ed,uf,ig,dh,hj,tk,nl,s\\;,-',\\;z,qx,jc,kv,xb,bn,mm,w\\,,v.,z/,[-,]=,\"Q,<W,>E,PR,YT,FY,GU,CI,RO,LP,?{,+},AA,OS,ED,UF,IG,DH,HJ,TK,NL,S:,_\",:Z,QX,JC,KV,XB,BN,MM,W<,V>,Z?

" Enable folding
set foldmethod=syntax
set foldlevel=99
"map space to za
nnoremap <space> za

"Nerd TRee show file in directory automatically
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

autocmd Filetype yml setlocal tabstop=4 softtabstop=4 shiftwidth=4 noexpandtab
"Set line number
set nu
"Python highlight & syntax
let python_highlight_all=1
syntax on

"Let syntastic know where to look for header files
let g:syntastic_cpp_include_dirs = ['include/']

autocmd Filetype cpp setlocal tabstop=8 softtabstop=4 shiftwidth=4 expandtab
autocmd Filetype make setlocal tabstop=4 softtabstop=4 shiftwidth=4 noexpandtab
autocmd Filetype test setlocal noexpandtab
set autoindent
set tabstop=8
set softtabstop=4
set shiftwidth=4


"let g:ycm_global_ycm_extra_conf = '/Users/ha/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'

"autocompletion
set complete=.,b,u,]
