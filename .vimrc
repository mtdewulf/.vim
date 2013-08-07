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

" Omnicomplete
autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
set completeopt=menuone,longest,preview

" ctags
set tags=tags;

" nerd tree
map <leader>n :NERDTreeFind<CR>

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

let g:solarized_termcolors=256
colorscheme solarized
