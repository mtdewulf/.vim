" Set up pathogen
filetype off
call pathogen#incubate()
call pathogen#helptags()
execute pathogen#infect()

" PEP8
let g:pep8_map='<leader>8'

" Pyflakes
let g:pyflakes_use_quickfix = 0

" ctags
set tags=tags;

" nerd tree
map <leader>f :NERDTreeFind<CR>

" Ack integration
nmap <leader>a <Esc>:Ack!

" Jedi VIM
let g:jedi#show_function_definition = 0

" Misc. customizations
set laststatus=2
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

let g:solarized_termcolors=256
let g:solarized_termtrans=1
set background=dark
colorscheme solarized

" Fix home/end key in all modes
map <esc>OH <home>
cmap <esc>OH <home>
imap <esc>OH <home>
map <esc>OF <end>
cmap <esc>OF <end>
imap <esc>OF <end>
