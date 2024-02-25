call plug#begin()
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'embark-theme/vim', { 'as': 'embark', 'branch': 'main' }
Plug 'nanotech/jellybeans.vim', { 'tag': 'v1.7' }
Plug 'preservim/nerdtree' 
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/vim-devicons'
Plug 'tpope/vim-fugitive'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
call plug#end()



" set bg 
set background=dark
" colorscheme
colorscheme Tomorrow-Night-Bright
" coc nvim tab binds
inoremap <expr> <Tab> coc#pum#visible() ? coc#pum#next(1) : "\<Tab>"
inoremap <expr> <S-Tab> coc#pum#visible() ? coc#pum#prev(1) : "\<S-Tab>"
" Ntree binds
nnoremap <C-n> :NERDTreeFocus<CR>

" tabs on vim
nmap <C-E> :tabclose<CR>
nmap <C-T> :tabnew<CR>
nmap <C-K> :tabn<CR>
nmap <C-J> :tabp<CR>

" write and quit
nmap <C-W> :write!<CR>
nmap <C-Q> :quit!<CR>

" fzf 
nmap <C-F> :Files<CR>
nmap <C-C> :Buffers<CR>

" git fzf
nmap <C-G> :Commits<CR>

" syntax highlight 
syntax on
" convert tab to spaces 
set expandtab
" auto indent 
set autoindent 
" filetype indent 
set filetype=on
" insert number of spaces when the tab key is pressed
set smarttab
set tabstop=4 
" enable search highligting and more tips
set hlsearch
set ignorecase
set incsearch
set smartcase
" hide vim insert status
set noshowmode
" numbers
set nu 
" mouse enable
set mouse=a 
" the window's title
set title
" use colors that suit a dark background
set background=dark
" automatically re-read files if unmodified inside vim
set autoread
" enable utf-8 
set encoding=UTF-8
" remove (~)
set fillchars=vert:\│,eob:\ 
" remove bloatware on vim-airline
au User AirlineAfterInit :let g:airline_section_z = airline#section#create(['%4p%% %L:%3v'])

" set theme for status bar
let g:airline_theme='minimalist'
