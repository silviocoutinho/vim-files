call plug#begin()
Plug 'morhetz/gruvbox'
Plug 'terryma/vim-multiple-cursors'
Plug 'sheerun/vim-polyglot' 
Plug 'itchyny/lightline.vim'
Plug 'scrooloose/nerdtree'
Plug 'prettier/vim-prettier', { 'do': 'yarn install', 'branch': 'release/0.x'}
Plug 'dense-analysis/ale'
Plug 'editorconfig/editorconfig-vim'
Plug 'ternjs/tern_for_vim', { 'do' : 'npm install' }
Plug 'frazrepo/vim-rainbow'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'Yggdroot/indentLine' 
call plug#end()

"colorscheme gruvbox
set background=dark

colorscheme dracula
"colorscheme_bg="dark"

syntax on
set hidden
set number
set relativenumber
set mouse=a
set inccommand=split

let mapleader="\<space>"
nnoremap <leader>; A;<esc>
nnoremap <leader>sv :source ~/.config/nvim/init.vim<cr>

" ######## Shortcut NERDTree ######
map <C-o> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Shortcut split navigation NERDTree
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

"Shortcut Prettier
nmap <Leader>py <Plug>(Prettier)


"ESLint for JS
let g:ale_fixers = { 'javascript' : ['eslint']}
let g:ale_linters = { 'javascript' : ['eslint']}

let g:ale_sign_error = "◉"
let g:ale_sign_warning = "◉"
highlight ALEErrorSign ctermfg=9 ctermbg=15 guifg=#C30500 guibg=#F5F5F5
highlight ALEWarningSign ctermfg=11 ctermbg=15 guifg=#ED6237 guibg=#F5F5F5

"Autocomplete
filetype plugin on
set omnifunc=syntaxcomplete#Complete

"Vim rainbow brackets
" Global configuration
let g:rainbow_active = 1
au FileType c,cpp,objc,objcpp,js,ts,json call rainbow#load()

let g:NERDTreeGitStatusIndicatorMapCustom = {
                \ 'Modified'  :'✹',
                \ 'Staged'    :'✚',
                \ 'Untracked' :'✭',
                \ 'Renamed'   :'➜',
                \ 'Unmerged'  :'═',
                \ 'Deleted'   :'✖',
                \ 'Dirty'     :'✗',
                \ 'Ignored'   :'☒',
                \ 'Clean'     :'✔︎',
                \ 'Unknown'   :'?',
                \ }

let g:indentLine_char = '▏'

