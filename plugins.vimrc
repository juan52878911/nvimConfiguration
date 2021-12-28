call plug#begin('~/.config/nvim/plugged')

" Temas 

Plug 'morhetz/gruvbox'
" Plug 'wojciechkepka/vim-github-dark'
Plug 'joshdick/onedark.vim'

" COC
Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'yarn install --frozen-lockfile'}

" Treesiter
" Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" AirLine
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Visualizar archivos
Plug 'scrooloose/nerdtree'

" Git
Plug 'airblade/vim-gitgutter'

" Iconos
Plug 'ryanoasis/vim-devicons'

" Terminal flotante
Plug 'voldikss/vim-floaterm'

" welcome papiii
" Plug 'glepnir/dashboard-nvim'

" telescope
" Plug 'nvim-lua/plenary.nvim'
" Plug 'nvim-telescope/telescope.nvim'

call plug#end()
