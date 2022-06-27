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
set number  " Muestra los n�meros de las l�neas
set mouse=a  " Permite la integraci�n del mouse (seleccionar texto, mover el cursor)

set nowrap  " No dividir la l�nea si es muy larga

set cursorline  " Resalta la l�nea actual
set colorcolumn=120  " Muestra la columna l�mite a 120 caracteres

" Indentaci�n a 2 espacios
set tabstop=2
set shiftwidth=2
set softtabstop=2
set shiftround
set expandtab  " Insertar espacios en lugar de <Tab>s

set hidden  " Permitir cambiar de buffers sin tener que guardarlos

set ignorecase  " Ignorar may�sculas al hacer una b�squeda
set smartcase  " No ignorar may�sculas si la palabra a buscar contiene may�sculas

set spelllang=en,es  " Corregir palabras usando diccionarios en ingl�s y espa�ol

set termguicolors  " Activa true colors en la terminal

let g:mapleader = ' '  " Definir espacio como la tecla l�der

nnoremap <leader>s :w<CR>  " Guardar con <l�der> + s

nnoremap <leader>e :e $MYVIMRC<CR>  " Abrir el archivo init.vim con <l�der> + e

" Usar <l�der> + y para copiar al portapapeles
vnoremap <leader>y "+y
nnoremap <leader>y "+y

" Usar <l�der> + d para cortar al portapapeles
vnoremap <leader>d "+d
nnoremap <leader>d "+d

" Usar <l�der> + p para pegar desde el portapapeles
nnoremap <leader>p "+p
vnoremap <leader>p "+p
nnoremap <leader>P "+P
vnoremap <leader>P "+P

" Moverse al buffer siguiente con <l�der> + l
nnoremap <leader>l :bnext<CR>

" Moverse al buffer anterior con <l�der> + j
nnoremap <leader>j :bprevious<CR>

" Cerrar el buffer actual con <l�der> + q
nnoremap <leader>q :bdelete<CR>
