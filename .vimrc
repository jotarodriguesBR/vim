call plug#begin()
Plug 'ghifarit53/tokyonight-vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'preservim/nerdtree' 
Plug 'vim-airline/vim-airline'
Plug 'ryanoasis/vim-devicons'
Plug 'tpope/vim-fugitive'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'wolandark/vim-live-server'
Plug 'jiangmiao/auto-pairs'
Plug 'stsewd/fzf-checkout.vim'
Plug 'https://github.com/wolandark/vim-live-server'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
Plug 'prabirshrestha/vim-lsp'
Plug 'OmniSharp/omnisharp-vim'
call plug#end()


" Add `:Format` command to format current buffer
command! -nargs=0 Format :call CocActionAsync('format')
" Add `:Fold` command to fold current buffer
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer
command! -nargs=0 OR   :call     CocActionAsync('runCommand', 'editor.action.organizeImport')

" remove coc definition in between lines
call coc#config("inlayHint.enable", v:false)
" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" colorscheme
set termguicolors
" live server 
nmap e3 :StartLiveServer<CR>

" Ntree binds
nnoremap n3 :NERDTreeFocus<CR>
" tabs on vim
nmap -- :tabclose<CR>
nmap ++ :tabnew<CR>
nmap <S-K> :tabn<CR>
nmap <S-J> :tabp<CR>


" write and quit
nmap w :write<CR>
nmap Q :quit!<CR>
nmap q :quit<CR>

" fzf 
nmap ff :FZF<CR> 
nmap bb :Buffers<CR>

" git fzf
nmap gw :Commits<CR>

" md preview
nmap <C-S-P> :MarkdownPreview<CR>

" undo cache
set undofile
set undodir=~/.vim/undo/
" syntax highlight 
syntax on
" convert tab to spaces 
set expandtab
" auto indent 
set autoindent 
" filetype indent 
set filetype=on
" insert number of spaces when the tab key is pressed
set tabstop=3 
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
" enable utf-8 
" remove  (~)
set fillchars=vert:\│,eob:\ 

" Add (Neo)Vim's native statusline support
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}
au User AirlineAfterInit :let g:airline_section_z = airline#section#create(['%4p%% %L:%3v'])
let g:airline#extensions#whitespace#enabled = 0
" set theme for status bar
let g:airline_theme='tokyonight'
vnoremap <silent><Leader>y "yy <Bar> :call system('xclip', @y)<CR>
filetype indent plugin on
syntax enable
set termguicolors

let g:tokyonight_style = 'night' " available: night, storm
let g:tokyonight_enable_italic = 1

colorscheme tokyonight
