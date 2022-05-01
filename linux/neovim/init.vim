:set number
:set autoindent
:set smartindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set mouse=a

" no delays!
" :set updatetime=300

" :set cmdheight=1
" :set shortmess+=c

:set signcolumn=yes

call plug#begin()

" Tutorial Plugins
Plug 'http://github.com/tpope/vim-surround' " Surrounding ysw)
Plug 'https://github.com/preservim/nerdtree' " NerdTree
Plug 'https://github.com/tpope/vim-commentary' " For Commenting gcc & gc
Plug 'https://github.com/vim-airline/vim-airline' " Status bar
" Plug 'https://github.com/lifepillar/pgsql.vim' " PSQL Pluging needs :SQLSetType pgsql.vim
Plug 'https://github.com/ap/vim-css-color' " CSS Color Preview
Plug 'https://github.com/rafi/awesome-vim-colorschemes' " Retro Scheme

Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'https://github.com/tc50cal/vim-terminal' " Vim Terminal
Plug 'https://github.com/preservim/tagbar' " Tagbar for code navigation
Plug 'https://github.com/terryma/vim-multiple-cursors' " CTRL + N for multiple cursors

set encoding=UTF-8


" My plugins
" Auto-close braces and scopes
Plug 'jiangmiao/auto-pairs'

" Better syntax-highlighting for filetypes in vim
Plug 'sheerun/vim-polyglot'

" Switch to the begining and the end of a block by pressing %
Plug 'tmhedberg/matchit'

" Tabs
Plug 'kyazdani42/nvim-web-devicons'
Plug 'romgrk/barbar.nvim'

" Arduino
Plug 'stevearc/vim-arduino'

" Markdown preview (:MarkdownPreview)
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}


call plug#end()


" Get syntax files from config folder
set runtimepath+=~/.config/nvim/syntax
syntax on

" Mute
set visualbell

" Highlight search results
set hlsearch
set incsearch

" Keybinds
nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-l> :call CocActionAsync('jumpDefinition')<CR>


nmap <F8> :TagbarToggle<CR>

:set completeopt-=preview " For No Previews

:colorscheme jellybeans

" Neat functions


