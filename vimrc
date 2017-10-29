set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'elzr/vim-json'
Plugin 'moll/vim-node'
Plugin 'pangloss/vim-javascript'
Plugin 'hail2u/vim-css3-syntax'
Plugin 'isruslan/vim-es6'
Plugin 'posva/vim-vue'
Plugin 'tomasr/molokai'
Plugin 'sjl/badwolf'
Plugin 'scrooloose/nerdcommenter'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/syntastic'
Plugin 'robu3/vimongous'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
"Plugin 'itchyny/lightline.vim'
Plugin 'Chiel92/vim-autoformat'
Plugin 'arcticicestudio/nord-vim'
Plugin 'tpope/vim-surround'
Plugin 'othree/html5.vim'
Plugin 'groenewege/vim-less'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'mattn/emmet-vim'
Plugin 'jiangmiao/auto-pairs'
Plugin 'ervandew/supertab'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
let mapleader=","

set number
set syntax=on
syntax enable
"autocmd vimenter * NERDTree
set showcmd
set cursorline
set list
set listchars=tab:▸\ ,trail:•,extends:»,precedes:«,eol:↲
set lazyredraw
set showmatch
set incsearch           " search as characters are entered
set hlsearch            " highlight matches
set foldenable
set foldlevelstart=10
set foldnestmax=10
set foldmethod=indent
set wildmenu
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,node_modules,*.log
set backspace=indent,eol,start
set splitbelow
set splitright
set tw=0


map <C-S-n> :NERDTreeToggle<CR>
let g:NERDTreeWinPos = "right"

" move to beginning/end of line
nnoremap B ^
nnoremap E $
nnoremap ^ <nop>
nnoremap gV `[v`]
nnoremap <leader>rc :vsp $MYVIMRC<CR>
nnoremap <leader>ez :vsp ~/.zshrc<CR>
nnoremap <leader>rr :source $MYVIMRC<CR>
nnoremap <leader><space> :nohlsearch<CR>
nnoremap <C-a> ggvG
nnoremap <C-Tab> <C-^>
nnoremap <C-S-i> gg=G
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nnoremap <C-Z> :u<CR>

set smarttab
set tabstop=2 shiftwidth=2 expandtab

" CtrlP settings
let g:ctrlp_match_window = 'bottom,order:ttb'
let g:ctrlp_switch_buffer = 0
let g:ctrlp_working_path_mode = 0
let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'
let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

set noeb vb t_vb=
hi CursorLine cterm=NONE ctermbg=darkblue ctermfg=white guibg=darkblue guifg=white

" trim white space stuff
fun! TrimWhitespace()
  let l:save = winsaveview()
  %s/\s\+$//e
  call winrestview(l:save)
endfun

command! TrimWhitespace call TrimWhitespace()
:noremap <Leader>w :call TrimWhitespace()<CR>
autocmd BufWritePre * :call TrimWhitespace()
