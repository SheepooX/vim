" Sorcery: remove trailing black lines
let &t_ut=''

" Additional highlighting
call matchadd('Conceal', '*')
call matchadd('Conceal', '->')
call matchadd('Conceal', 'DONE')
call matchadd('Conceal', 'REPLACE')

" Plugins
call plug#begin('~/.vim/plugged')

Plug 'vim-scripts/tComment'
Plug 'vim-scripts/taglist.vim'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-endwise'
Plug 'bronson/vim-trailing-whitespace'
Plug 'tmhedberg/matchit'
Plug 'sickill/vim-pasta'
Plug 'rstacruz/sparkup'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/nerdtree'
Plug 'valloric/youcompleteme'
Plug 'tpope/vim-fugitive'
Plug 'kien/ctrlp.vim'
Plug 'plasticboy/vim-markdown'
Plug 'evidens/vim-twig'
" Colour schemes
Plug 'icymind/neosolarized'
Plug 'morhetz/gruvbox'
" Julia
Plug 'benekastah/neomake'
Plug 'JuliaEditorSupport/julia-vim'
Plug 'zyedidia/julialint.vim'
" Rockstar
Plug 'sirosen/vim-rockstar'
" Sassy css
Plug 'cakebaker/scss-syntax.vim'
Plug 'jlong/sass-convert.vim'
" Rainbow
Plug 'luochen1990/rainbow'
" Linting
Plug 'scrooloose/syntastic'

call plug#end()

" PLUGIN SETTINGS
" Ctrlp search in nearest ancestoral directory that contains .git directory
let g:ctrlp_working_path_moode='ra'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip

" vim-airline
set ttimeoutlen=10
" let g:airline_theme='gruvbox'
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
map <C-M> :TlistToggle<CR>
map <C-L><C-R> :TlistAddFilesRecursive .<CR>

