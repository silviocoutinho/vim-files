call plug#begin()
Plug 'morhetz/gruvbox'
Plug 'terryma/vim-multiple-cursors'
Plug 'sheerun/vim-polyglot' 
Plug 'itchyny/lightline.vim'
Plug 'scrooloose/nerdtree'
call plug#end()

colorscheme gruvbox
set background=dark

set hidden
set number
set relativenumber
set mouse=a
set inccommand=split

let mapleader="\<space>"
nnoremap <leader>; A;<esc>
nnoremap <leader>sv :source ~/.config/nvim/init.vim<cr>
map <C-o> :NERDTreeToggle<CR>
