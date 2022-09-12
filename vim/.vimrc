vim9script

#Plugins
plug#begin()
Plug 'joshdick/onedark.vim'
Plug 'vim-airline/vim-airline'
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
