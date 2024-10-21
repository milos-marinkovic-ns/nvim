set mouse=a
set number
set relativenumber
set showmatch
set scrolloff=8
set sidescrolloff=8
set scrolloff=3
set sidescrolloff=3

call plug#begin('~/.local/share/nvim/plugged')

Plug 'tpope/vim-sensible'
Plug 'preservim/nerdtree'
Plug 'cocopon/iceberg.vim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.8' }
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

call plug#end()

let mapleader = ","

" Colorsheme configuration
colorscheme iceberg
let g:iceberg_contrast_dark = 1
let g:iceberg_transparent = 2
let g:iceberg_dimmer_comments = 3

" Nerd tree configuration
nnoremap <leader>wt <cmd>NERDTreeToggle<CR>
let g:NERDTreeShowHidden=1
let g:NERDTreeDirArrowExpandable='🚀'
let g:NERDTreeDirArrowCollapsible='💡'

"Telescope configuration
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>:p
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

" Coc configuration
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

