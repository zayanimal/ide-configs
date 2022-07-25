filetype plugin indent on

set encoding=utf-8
set nocompatible
set tabstop=4
set shiftwidth=4
set number
set ignorecase
set autoread
syntax enable

let NERDTreeShowHidden=1

if empty(glob('~/.vim/autoload/plug.vim')) 
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/bundle')
  Plug 'ErichDonGubler/vim-sublime-monokai'
  Plug 'vim-airline/vim-airline'
  Plug 'tpope/vim-fugitive'
  Plug 'airblade/vim-gitgutter'
  Plug 'mattn/emmet-vim'
  Plug 'preservim/nerdtree'
  Plug 'mtdl9/vim-log-highlighting'
  Plug 'pangloss/vim-javascript'
  Plug 'mxw/vim-jsx'
  Plug 'jelera/vim-javascript-syntax'
  Plug 'chr4/nginx.vim'
  Plug 'martinda/Jenkinsfile-vim-syntax'
call plug#end()

colorscheme sublimemonokai

let g:airline_powerline_fonts = 1
let g:airline#extensions#keymap#enabled = 0
let g:airline_section_z = "\ue0a1:%l/%L Col:%c"
let g:Powerline_symbols='unicode'
let g:airline#extensions#xkblayout#enabled = 0

