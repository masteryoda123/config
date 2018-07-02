filetype plugin on
syntax on
set encoding=utf-8

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'dhruvasagar/vim-table-mode'
Plugin 'Xolox/vim-notes'
Plugin 'xolox/vim-misc'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'pangloss/vim-javascript'
Plugin 'bling/vim-airline'
" Plugin 'Valloric/YouCompleteMe'
Plugin 'jiangmiao/auto-pairs'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'easymotion/vim-easymotion'
Plugin 'ntpeters/vim-better-whitespace'

call vundle#end()

filetype plugin indent on

" Mappings
inoremap jk <ESC>
let mapleader = "\<Space>"
:imap <D-v> ^O:set paste<Enter>^R+^O:set nopaste<Enter>

" Text settings
set wrap
set shiftwidth=2
set tabstop=2
set backspace=indent,eol,start
set number
set autoindent
set copyindent
set shiftround
set showmatch
set ignorecase
set smartcase
set smarttab
set expandtab
set hlsearch
set incsearch

" Get rid of backup files
set nobackup
set noswapfile

" Syntastic settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_javascript_checkers = ['eslint']

" Syntastic Debugging
let g:syntastic_debug = 0

" Solarized vim settings
syntax enable
set background=dark
let g:solarized_visibility = "high"
let g:solarized_contrast = "high"
let g:solarized_termcolors=256
colorscheme solarized

" NERDTree settings
map <C-n> :NERDTreeToggle<CR> " Map ctrl-n to NERDTree
" Use ctrl-[hjkl] to select the active split!
nmap <silent> <c-k> :wincmd k<CR>
nmap <silent> <c-j> :wincmd j<CR>
nmap <silent> <c-h> :wincmd h<CR>
nmap <silent> <c-l> :wincmd l<CR>

" Airline settings
let g:airline_powerline_fonts = 1 

" Autopairs settings
let g:AutoPairsFlyMode = 1

" Vim-tmux-navigator settings
let g:tmux_navigator_no_mappings = 1
nnoremap <silent> {c-h} :TmuxNavigateLeft<cr>
nnoremap <silent> {c-j} :TmuxNavigateDown<cr>
nnoremap <silent> {c-k} :TmuxNavigateUp<cr>
nnoremap <silent> {c-l} :TmuxNavigateRight<cr>
nnoremap <silent> {c-\\} :TmuxNavigatePrevious<cr>

" Vim window settings
nmap <silent> <A-Up> :wincmd k<CR>
nmap <silent> <A-Down> :wincmd j<CR>
nmap <silent> <A-Left> :wincmd h<CR>
nmap <silent> <A-Right> :wincmd l<CR>
set splitbelow
set splitright

" Mac Clipboard Copy Paste Mapping
vmap <C-x> :!pbcopy<CR>
vmap <C-c> :w !pbcopy<CR><CR>
