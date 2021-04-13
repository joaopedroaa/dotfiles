call plug#begin()
 Plug 'scrooloose/nerdtree'

 Plug 'ervandew/supertab'
 Plug 'shougo/neocomplete.vim'

 Plug 'joshdick/onedark.vim'
 Plug 'arzg/vim-colors-xcode'
 Plug 'arcticicestudio/nord-vim'
call plug#end()




" UI:
   syntax on
   colorscheme nord
   set background=dark

   set number
   set relativenumber

" Config:
   set mouse=a
   set encoding=utf-8

" Plugins
let g:SuperTabDefaultCompletionType="<C-n>"



map <F8> :NERDTreeToggle <cr>
map <F12> :PlugInstall <cr>
