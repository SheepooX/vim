" Sorcery: remove trailing black lines
let &t_ut=''

" Additional highlighting
call matchadd('Conceal', '*')
call matchadd('Conceal', '->')
call matchadd('Conceal', 'DONE')
call matchadd('Conceal', 'REPLACE')

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
Plug 'vim-scripts/taglist.vim'
Plug 'kuniwak/vint'
Plug 'plasticboy/vim-markdown'
Plug 'evidens/vim-twig'
" Plug 'valloric/youcompleteme'
" Colour schemes
Plug 'icymind/neosolarized'
Plug 'morhetz/gruvbox'

call plug#end()

" PLUGIN SETTINGS
" Ctrlp search in nearest ancestoral directory that contains .git directory
let g:ctrlp_working_path_moode='ra'
" vim-airline
set ttimeoutlen=10
let g:airline_theme='gruvbox'
" if !exists('g:airline_symbols')
	" let g:airline_symbols = {}
" endif
" let g:airline_symbols.space = "\ua0"
" let g:airline_powerline_fonts=1

" Color scheme
syntax enable
set background=dark
set termguicolors

" Gruvbox dark
let g:gruvbox_conrast_dark='medium'
colorscheme gruvbox

" UNUSED THEMES
" Solarized
" colorscheme NeoSolarized
" Monokai
" colorscheme monokai

" Indenting
filetype plugin indent on
set shiftwidth=4
set tabstop=4
set expandtab

" Relative and current line numbers
set relativenumber
set number

" Backspace behaviour in insert mode
set backspace=indent,eol,start

" Colorcolumn
set textwidth=80
set colorcolumn=+0
highlight ColorColumn guibg=Orange

" Disable folding
set nofoldenable
"
" Custom theming
hi Normal guibg=NONE ctermbg=NONE
" hi NonText guibg=NONE ctermbg=NONE


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
map <C-N> :NERDTreeToggle<CR>
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" Split navigation
nnoremap <C-H> <C-W><C-H>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>

" Split resizing
nnoremap <C-,> <C-W><>>
nnoremap <C-/> <C-W><>>
nnoremap <C-+> <C-W><+>
nnoremap <C--> <C-W><->

" Taglist
map <C-M><C-T> :TlistToggle<CR>
map <C-M><C-R> :TlistAddFilesRecursive .<CR>

