" https://github.com/awesome-streamers/awesome-streamerrc/tree/master/ThePrimeagen

call plug#begin('~/.local/share/nvim/plugged')

" Plebvim lsp Plugins
Plug 'neovim/nvim-lspconfig'
" Plug 'nvim-lua/completion-nvim'
Plug 'hrsh7th/nvim-compe'
Plug 'tjdevries/nlua.nvim'
Plug 'tjdevries/lsp_extensions.nvim'

" Neovim Tree shitter
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-treesitter/playground'

Plug 'tpope/vim-commentary'

"System
Plug 'tweekmonster/startuptime.vim'

" Themes
Plug 'YorickPeterse/happy_hacking.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'junegunn/gv.vim' " git commit browser
Plug 'mbbill/undotree'
Plug 'gruvbox-community/gruvbox'

Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'
Plug 'lewis6991/gitsigns.nvim'


" ****** to checkout, some may not be required anymore ******
" Plug 'lukas-reineke/indent-blankline.nvim'
" https://github.com/hrsh7th/vim-vsnip
" Plug 'octol/vim-cpp-enhanced-highlight'
" Plug 'tpope/vim-projectionist'
" Plug 'vuciv/vim-bujo'
" Plug 'tpope/vim-dispatch'
" Plug 'theprimeagen/vim-be-good'
" Plug 'vim-utils/vim-man'
" Plug 'tpope/vim-fugitive' 
" Plug 'jiangmiao/auto-pairs'
" Plug 'majutsushi/tagbar'
" Plug 'sheerun/vim-polyglot'
" Plug 'tpope/vim-fugitive'
" Plug 'godlygeek/tabular'

call plug#end()

" run my lua code
lua require("zer0c00l")

" added for language server, hides an open file that needs to be saved if a
" new file is opened
set hidden

"Vim settings
let mapleader="\<Space>"
set splitbelow "horizontal split open below
set splitright "vertical split open to the right 
set clipboard+=unnamedplus
set number
set hlsearch                " highlight search results
set tabstop=4               " number of columns occupied by a tab character
set softtabstop=4           " see multiple spaces as tabstops so <BS> does the right thing
set expandtab               " converts tabs to white space
set shiftwidth=4            " width for autoindents
set laststatus=2
set noswapfile

" UI
set termguicolors 
set background = "dark"
colorscheme happy_hacking

let g:airline#extensions#tabline#enabled = 2
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#right_sep = ' '
let g:airline#extensions#tabline#right_alt_sep = '|'
let g:airline_left_sep = ' '
let g:airline_left_alt_sep = '|'
let g:airline_right_sep = ' '
let g:airline_right_alt_sep = '|'

let g:airline_theme='minimalist'
set statusline+=%#warningmsg#
set statusline+=%*


" Normal mode key remaps
nnoremap <C-j> <C-W><C-J>
nnoremap <C-k> <C-W><C-K>
nnoremap <C-l> <C-W><C-L>
nnoremap <C-h> <C-W><C-H>
nnoremap <CR> :noh<CR> 		"removes highlighting after a search


" Normal mode buffer stuff
" noremap <leader>bn :enew<CR>
" noremap <leader>l :bnext<CR>
" noremap <leader>h :bprev<CR>
noremap <leader>] :bn<CR>
noremap <leader>[ :bp<CR>
noremap <leader>bq :bp <BAR> bd #<CR>
noremap <leader>bl :ls<CR>

"External Hosts
" let g:python_host_prog = '/Users/richard/.pyenv/versions/neovim2/bin/python'
" let g:python3_host_prog = '/Users/richard/.pyenv/versions/neovim3/bin/python'

" For conceal markers.
if has('conceal')
  set conceallevel=2 concealcursor=niv
endif

