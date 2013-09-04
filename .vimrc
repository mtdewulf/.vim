" set up pathogen
filetype off
call pathogen#incubate()
call pathogen#helptags()
execute pathogen#infect()

" don't bother with vi compatibility
set nocompatible

" pep8
let g:pep8_map='<leader>8'

" pyflakes
let g:pyflakes_use_quickfix = 0

" ctags & tagbar
set tags=tags;
nmap <leader>] :TagbarToggle<CR>
let g:tagbar_sort = 0

" nerd tree
map <leader>f :NERDTreeFind<CR>
let g:NERDTreeQuitOnOpen = 1

" ack integration
nmap <leader>a <Esc>:Ack!

" auto reload files when changed on disk
set autoread

" basic view
set laststatus=2
set number  " show line numbers

" searching
set smartcase
set incsearch
set hlsearch

" indenting
set expandtab
set tabstop=4
set shiftwidth=4

" folding
set foldmethod=indent
set foldlevel=99

" wrapping
set nowrap
set showbreak=>>>

" easier to navigate vim menu
set wildignore=log/**,node_modules/**,target/**,tmp/**,*.rbc
set wildmenu
set wildmode=longest,list,full

" show trailing whitespace
set list
set listchars=tab:▸\ ,trail:▫

" colors & syntax
execute "set colorcolumn=" . join(range(81,335), ',')

syntax on
filetype on
filetype plugin indent on

let g:solarized_termcolors=256
let g:solarized_termtrans=1
set background=dark
colorscheme solarized

" fix home/end key in all modes
map <esc>OH <home>
cmap <esc>OH <home>
imap <esc>OH <home>
map <esc>OF <end>
cmap <esc>OF <end>
imap <esc>OF <end>
