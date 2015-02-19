" set up pathogen
filetype off
call pathogen#incubate()
call pathogen#helptags()
execute pathogen#infect()

" don't bother with vi compatibility
set nocompatible

" ctrl-p
let g:ctrlp_custom_ignore = '\v\.(pyc)$'

" python-mode
let g:pymode_rope_lookup_project = 0
let g:pymode_rope_complete_on_dot = 0
let g:pymode_rope_goto_definition_bind = "<C-]>"
let g:pymode_rope_goto_definition_cmd = 'e'
let g:pymode_breakpoint = 0
let g:pymode_folding = 0
let g:pymode_motion = 0
let g:pymode_run = 0
let g:pymode_lint_cwindow = 0

" fugitive
nmap <leader>b <Esc>:Gblame<CR>
nmap <leader>w <Esc>:Gbrowse<CR>

" nerd tree
map <leader>f :NERDTreeFind<CR>
let g:NERDTreeQuitOnOpen = 1
let g:NERDTreeIgnore = ['\.pyc$']

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

" easier to navigate vim men
set wildignore=log/**,node_modules/**,target/**,tmp/**,*.rbc
set wildmenu
set wildmode=longest,list,full

" show trailing whitespace
set list
set listchars=tab:▸\ ,trail:▫

" delete like normal
set backspace=indent,eol,start

" colors & syntax
execute "set colorcolumn=" . join(range(81,335), ',')

" close help automatically
autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
autocmd InsertLeave * if pumvisible() == 0|pclose|endif

" mouse
set mouse=a

syntax on
filetype on
filetype plugin indent on

let &t_Co=256
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
