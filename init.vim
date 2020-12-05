"""plugins
" PlugInstall, PlugUpdate, PlugClean
call plug#begin("~/.vim/plugged")
  Plug 'ghifarit53/tokyonight-vim'
  Plug 'Yggdroot/indentLine'
  Plug 'scrooloose/nerdtree'
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()
"""colors
set termguicolors
set t_Co=256
let g:tokyonight_style = 'night' " available: night, storm
let g:tokyonight_enable_italic = 1
colorscheme tokyonight
" this forces transparent bg
autocmd vimenter * hi Normal guibg=NONE ctermbg=NONE
"""mouse
set mouse-=a
"""standard
syntax on
set encoding=utf-8
set novisualbell
set wrap
set number
set laststatus=2
syntax enable
set hlsearch
set cursorline
set number
set relativenumber
set wildmenu
set ruler
"coc
set hidden
set nobackup
set nowritebackup
set cmdheight=1
set updatetime=300
"""spacing
filetype plugin indent off
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
autocmd FileType c setlocal tabstop=8
autocmd FileType ruby setlocal tabstop=2
autocmd FileType python setlocal tabstop=4
"""manual auto brackets
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>0
inoremap {;<CR> {<CR>};<ESC>0
"""integrated terminal
" open new split panes to right and below
set splitright
set splitbelow
" turn terminal to normal mode with escape
tnoremap <Esc> <C-\><C-n>
" start terminal in insert mode
au BufEnter * if &buftype == 'terminal' | :startinsert | endif
" open terminal on ctrl+n
function! OpenTerminal()
  split term://bash
  resize 8
endfunction
nnoremap <c-n> :call OpenTerminal()<CR>
" <Ctrl-l> redraws the screen and removes any search highlighting.
nnoremap <silent> <C-l> :nohl<CR><C-l>

""" Plugin Settings
"" cock - CocUninstall, CocConfig
" python https://github.com/neoclide/coc-python
let g:coc_global_extensions = ['coc-python', 'coc-emmet', 'coc-css', 'coc-html', 'coc-json', 'coc-prettier', 'coc-tsserver']
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
"GoTo code navigation
nmap <leader>g <C-o>
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gt <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <leader>rn <Plug>(coc-rename)
"" indentLines
let g:indentLine_enabled = 1
let g:indentLine_char = '│'
"" Nerdtree
let g:NERDTreeShowHidden = 1
let g:NERDTreeMinimalUI = 1
let g:NERDTreeIgnore = []
let g:NERDTreeStatusline = ''
" Automaticaly close nvim if NERDTree is only thing left open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" Toggle
nnoremap <silent> <C-b> :NERDTreeToggle<CR>
" use alt+hjkl to move between split/vsplit panels
tnoremap <A-h> <C-\><C-n><C-w>h
tnoremap <A-j> <C-\><C-n><C-w>j
tnoremap <A-k> <C-\><C-n><C-w>k
tnoremap <A-l> <C-\><C-n><C-w>l
nnoremap <A-h> <C-w>h
nnoremap <A-j> <C-w>j
nnoremap <A-k> <C-w>k
nnoremap <A-l> <C-w>l