map = :e ~/.config/nvim/init.vim
tnoremap <A-h> <C-\><C-N><C-w>h
tnoremap <A-j> <C-\><C-N><C-w>j
tnoremap <A-k> <C-\><C-N><C-w>k
tnoremap <A-l> <C-\><C-N><C-w>l
inoremap <A-h> <C-\><C-N><C-w>h
inoremap <A-j> <C-\><C-N><C-w>j
inoremap <A-k> <C-\><C-N><C-w>k
inoremap <A-l> <C-\><C-N><C-w>l
tnoremap <Esc> <C-\><C-n>
set hidden
set nobackup
"set nowritebackup
"set cmdheight=2
set updatetime=300
"set shortmess+=c
"set signcolumn=yes

set encoding=UTF-8
syntax enable 
set noshowmode
" Always show statusline
set laststatus=2

" Use 256 colours (Use this setting only if your terminal supports 256 colours)
"colorscheme onedark
set t_Co=256
map ~ :noh
map <A-h> <C-w>h
map <A-j> <C-w>j
map <A-k> <C-w>k
map <A-l> <C-w>l
set number
" Plugin 'itchyny/lightline.vim'
let g:lightline = {
      \ 'colorscheme': 'seoul256',
      \ }
call plug#begin()
"Plug 'neoclide/coc.nvim' , {'branch': 'release'}
"Plug 'arakashic/chromatica.nvim'
"Plug 'sheerun/vim-polyglot'
"Plug 'leafgarland/typescript-vim'
"Plug 'mhinz/vim-startify'
"Plug 'Valloric/YouCompleteMe'
"h
Plug 'ryanoasis/vim-devicons'
Plug 'joshdick/onedark.vim'
Plug 'preservim/nerdtree'
Plug 'dense-analysis/ale'
Plug 'ervandew/supertab'
"lug 'artur-shaik/vim-javacomplete2'
"  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
"Plug 'morhetz/gruvbox'
"Plug 'flazz/vim-colorschemes'
"lug 'ap/vim-css-color'
Plug 'majutsushi/tagbar'
"Plug 'frazrepo/vim-rainbow'
call plug#end()
" use <tab> for trigger completion and navigate to the next complete item
 function! s:check_back_space() abort
   let col = col('.') - 1
     return !col || getline('.')[col - 1]  =~ '\s'
     endfunction

     inoremap <silent><expr> <Tab>
           \ pumvisible() ? "\<C-n>" :
                 \ <SID>check_back_space() ? "\<Tab>" :
                       \ coc#refresh()
                        
map <A-d> :NERDTreeToggle .<CR>
map <A-c> :TagbarToggle<CR>
let NERDTreeQuitOnOpen=1
"autocmd vimenter * NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
"autocmd FileType java setlocal omnifunc=javacomplete#Complete
colorscheme onedark 
