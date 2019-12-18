set nocompatible	" required
filetype off		" required

" set the runtime path to include Vundle and initialize 
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugings
"call vundle#begin('~/some/path.here')

" let Vundle manage Vundle ,required
Plugin 'gmarik/Vundle.vim'
Plugin 'tmhedberg/SimpylFold'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'jnurmine/Zenburn'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'Lokaltog/powerline',{'rtp':'powerline/bindings/vim/'}
" Add all your plugins here (note older versions of Vundle used Bundle instead of Plugin)

" All of your Plugings must be added before the following line
call vundle#end()	" required
filetype plugin indent on "required

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"Enable folding
set foldmethod=indent
set foldlevel=99
"Enable folding with the spacebar
nnoremap <space> za
let g:SimpylFold_docstring_preview=1

" PEP8 Style tab 
au BufNewFile,BufRead *.py
			\set tabstop=4
			\set softtabstop=4
			\set shiftwidth=4
			\set textwidth=79
			\set expandtab
			\set autoindent
			\set fileformat=unix
au BufNewFile,BufRead *.c
			\set tabstop=4
			\set softtabstop=4
			\set shiftwidth=4
au BufNewFile,BufRead *.h
			\set tabstop=4
			\set softtabstop=4
			\set shiftwidth=4
au BufNewFile,BufRead *.cpp
			\set tabstop=4
			\set softtabstop=4
			\set shiftwidth=4
au BufNewFile,BufRead *.hpp
			\set tabstop=4
			\set softtabstop=4
			\set shiftwidth=4

"Encoding utf-8
set encoding=utf-8

"Auto complete
let g:ycm_autoclose_preview_window_after_completion = 1
map <leader>g :YcmCompleter GoToDefinitionElseDeclaration<CR>


let python_highlight_all=1
syntax on

let NERDTreeIgnore=['\.pyc$','\~$'] "ignore files in NERDTree
"show the number of lines
set nu

set clipboard =unnamedplus

"when vim starts up ,NERDTree automatically
autocmd vimenter * NERDTree

