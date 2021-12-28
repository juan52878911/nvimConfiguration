" configuracion del editor
set number relativenumber
set mouse=a
set cursorline
syntax on
set encoding=UTF-8

" Plugins 
source $HOME/.config/nvim/plugins.vimrc

" airline configuracion
source $HOME/.config/nvim/themes/airline.vim

" Apariencia
colorscheme onedark

" welcome page 
" Default value is clap
let g:dashboard_default_executive ='clap'

" Teclas
let mapleader = ' '

" Visualizador de archivos
nnoremap <Leader>e :NERDTreeToggle<CR>

nnoremap <Leader>w :w<CR>
nnoremap <Leader>q :q<CR>

" terminal flotante
nnoremap <Leader>t :FloatermToggle --autoclose=0<CR>
