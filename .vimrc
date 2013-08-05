" Set up pathogen
filetype off
call pathogen#incubate()
call pathogen#helptags()
execute pathogen#infect()

" Gundo (show all versions)
map <leader>g :GundoToggle<CR>

" PEP8
let g:pep8_map='<leader>8'

" Pyflakes
let g:pyflakes_use_quickfix = 0

" Supertab
au FileType python set omnifunc=pythoncomplete#Complete
let g:SuperTabDefaultCompletionType = "context"
set completeopt=menuone,longest,preview

" ctags
set tags=tags;

" nerd tree
map <leader>n :NERDTreeToggle<CR>

" Ack integration
nmap <leader>a <Esc>:Ack!

" Misc. customizations
set laststatus=2
set ignorecase
set smartcase
set incsearch
set nowrap
set number
set hlsearch
set expandtab
set tabstop=4
set shiftwidth=4
set colorcolumn=80

set foldmethod=indent
set foldlevel=99

syntax on
filetype on
filetype plugin indent on
set background=dark

colorscheme elflord
