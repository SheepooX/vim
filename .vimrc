" Plugins
call plug#begin('~/.vim/plugged')

Plug 'bronson/vim-trailing-whitespace'
Plug 'tmhedberg/matchit'
Plug 'sickill/vim-pasta'
Plug 'ervandew/supertab'
Plug 'vim-scripts/tComment'
Plug 'vim-scripts/ZoomWin'
Plug 'tpope/vim-fugitive'
Plug 'kien/ctrlp.vim'
Plug 'rstacruz/sparkup'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-bundler'

call plug#end()

" PLUGIN SETTINGS
" Ctrlp search in nearest ancestoral directory that contains .git directory
let g:ctrlp_working_path_moode = 'ra'
" vim-airline
set ttimeoutlen=10
let g:airline_theme='light'

" Monokai
syntax enable
colorscheme monokai

" Indenting
set shiftwidth=2
set tabstop=2
set autoindent
set smartindent
set cindent

" Relative and current line numbers
set relativenumber
set number

" Backspace behaviour in insert mode
set backspace=indent,eol,start

" Colorcolumn
set textwidth=100
set colorcolumn=+1
highlight ColorColumn guibg=Orange

" KEY MAPS
" Disablee arrow keys in normal mode
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>
" Space for INSERT MODE
nnoremap <Space> i
" Tab switching
noremap <F7> :tabp <Enter>
noremap <F8> :tabn <Enter>
" NerdTree
map <C-n> :NERDTreeToggle<CR>
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" Split navigation
nnoremap <C-H> <C-W><C-H>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
