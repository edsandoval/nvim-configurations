call plug#begin("~/.vim/plugged")
Plug 'dracula/vim'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'majutsushi/tagbar'
Plug 'sbdchd/neoformat'
Plug 'artur-shaik/vim-javacomplete2'
Plug 'dikiaap/minimalist'
Plug 'neomake/neomake'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/vim-devicons'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
Plug 'junegunn/seoul256.vim'
Plug 'junegunn/vim-journal'
Plug 'junegunn/rainbow_parentheses.vim'
Plug 'nightsense/forgotten'
Plug 'zaki/zazen'
call plug#end()


"""""""""""""""""""""""""
""""  Java Complete  """"
"""""""""""""""""""""""""
autocmd FileType java setlocal omnifunc=javacomplete#Complete

"""""""""""""""""""""""""
""""     neomake     """"
"""""""""""""""""""""""""
autocmd! BufWritePost,BufEnter * Neomake

"""""""""""""""""""""""""
""""     neoformat   """"
"""""""""""""""""""""""""
augroup astyle
    autocmd!
      autocmd BufWritePre * Neoformat
    augroup END


" NERDTree
let NERDTreeShowHidden=1

"" Configuracion general
if (has("termguicolors"))
 set termguicolors
 endif
 syntax enable
 colorscheme dracula

set title  " Muestra el nombre del archivo en la ventana de la terminal
set number  " Muestra los números de las líneas
set mouse=a  " Permite la integración del mouse (seleccionar texto, mover el cursor)

set nowrap  " No dividir la línea si es muy larga

set cursorline  " Resalta la línea actual
set colorcolumn=120  " Muestra la columna límite a 120 caracteres

" Indentación a 2 espacios
set tabstop=2
set shiftwidth=2
set softtabstop=2
set shiftround
set expandtab  " Insertar espacios en lugar de <Tab>s

set hidden  " Permitir cambiar de buffers sin tener que guardarlos

set ignorecase  " Ignorar mayúsculas al hacer una búsqueda
set smartcase  " No ignorar mayúsculas si la palabra a buscar contiene mayúsculas

set spelllang=en,es  " Corregir palabras usando diccionarios en inglés y español

set termguicolors  " Activa true colors en la terminal

let g:mapleader = ' '  " Definir espacio como la tecla líder

nnoremap <leader>s :w<CR>  " Guardar con <líder> + s

nnoremap <leader>e :e $MYVIMRC<CR>  " Abrir el archivo init.vim con <líder> + e

" Usar <líder> + y para copiar al portapapeles
vnoremap <leader>y "+y
nnoremap <leader>y "+y

" Usar <líder> + d para cortar al portapapeles
vnoremap <leader>d "+d
nnoremap <leader>d "+d

" Usar <líder> + p para pegar desde el portapapeles
nnoremap <leader>p "+p
vnoremap <leader>p "+p
nnoremap <leader>P "+P
vnoremap <leader>P "+P

" Moverse al buffer siguiente con <líder> + l
nnoremap <leader>l :bnext<CR>

" Moverse al buffer anterior con <líder> + j
nnoremap <leader>j :bprevious<CR>

" Cerrar el buffer actual con <líder> + q
nnoremap <leader>q :bdelete<CR>
