vim9script

set spell

#Plugins
plug#begin()
Plug 'joshdick/onedark.vim'
Plug 'vim-airline/vim-airline'
Plug 'scrooloose/nerdtree'
Plug 'xuyuanp/nerdtree-git-plugin'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'ryanoasis/vim-devicons'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'airblade/vim-gitgutter'
Plug 'sheerun/vim-polyglot'
Plug 'mattn/emmet-vim'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'raimondi/delimitmate'
plug#end()

# Colorscheme
colorscheme onedark
highlight Normal ctermbg=Black
highlight Terminal ctermbg=DarkBlue ctermfg=White
highlight VertSplit ctermbg=Black
highlight MatchParen cterm=inverse
highlight CursorLine ctermbg=233

# Cursor
set cursorline
autocmd BufReadPost *
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal! g`\"" |
     \ endif # Return to last edit position when opening files

# Line numbers
set number

# Files
set noswapfile
set undofile
set undodir=/tmp

# Indenting
set tabstop=4
set shiftwidth=4
set softtabstop=4
set smarttab
set expandtab
set autoindent
set smartindent

# NERDTree
g:NERDTreeDirArrowExpandable = ''
g:NERDTreeDirArrowCollapsible = ''
g:NERDTreeShowHidden = 1
g:NERDTreeNodeDelimiter = "\x07"
g:NERDTreeMinimalUI = 1
g:NERDTreeWinSize = 20
g:NERDTreeIgnore = ['\.git$']

# Status Line
set noshowmode
g:airline#extensions#branch#custom_head = 'gitbranch#name'

# Line break
set breakindent
set wrap
set linebreak
set showbreak=\ \ ﬌\
set textwidth=80
set wrapmargin=80
set backspace=indent,eol,start

# CtrlP
g:ctrlp_custom_ignore = {
    'dir':  '\.git$\|\.yardoc\|node_modules\|log\|tmp$',
    'file': '\.so$\|\.dat$|\.DS_Store$'
    }

# DelimitMate
g:delimitMate_expand_cr = 1
g:delimitMate_expand_space = 1

# Windows
set splitbelow splitright
set diffopt+=vertical
set showtabline=0
set scrolloff=4
set foldmethod=indent
set foldcolumn=0
set foldlevel=99
set formatoptions=qrn1]jtc
set signcolumn=auto

# Search
set incsearch
set hlsearch
set ignorecase
set smartcase

# Disable keys
map <Up> <Nop>
map <Down> <Nop>
map <Left> <Nop>
map <Right> <Nop>
map <Home> <Nop>
map <End> <Nop>
map <PageUp> <Nop>
map <PageDown> <Nop>
imap <Up> <Nop>
imap <Down> <Nop>
imap <Left> <Nop>
imap <Right> <Nop>
imap <Home> <Nop>
imap <End> <Nop>
imap <PageUp> <Nop>
imap <PageDown> <Nop>

# Mappings
map <LEADER>n :NERDTreeToggle<CR>
