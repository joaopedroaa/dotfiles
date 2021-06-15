call plug#begin()
   Plug 'scrooloose/nerdtree'
   Plug 'ervandew/supertab'
   Plug 'shougo/neocomplete.vim'
   Plug 'terryma/vim-multiple-cursors'
   Plug 'wakatime/vim-wakatime'
   Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }

   Plug 'w0rp/ale'


"ncmv 
   Plug 'ncm2/ncm2'
   Plug 'roxma/nvim-yarp'

"Ranger
   Plug 'francoiscabrol/ranger.vim'
   Plug 'rbgrouleff/bclose.vim'

"Colors
   Plug 'sheerun/vim-polyglot'
   Plug 'joshdick/onedark.vim'
   Plug 'arzg/vim-colors-xcode'
   Plug 'arcticicestudio/nord-vim'
call plug#end()




" UI:
   syntax on
   colorscheme 
   set background=dark

   set number
   set relativenumber

" Config:
   set mouse=a
   set encoding=utf-8
   set hidden 		
   set inccommand=split 



   
   
" Plugins
let g:SuperTabDefaultCompletionType="<C-n>"


map <F8> :NERDTreeToggle <cr>
map <F12> :PlugInstall <cr>



let mapleader="\<space>"
nnoremap <leader>; A;<esc>
nnoremap <leader>ev :vsplit ~/dotfiles/.config/nvim/init.vim<cr>
nnoremap <leader>sv :source ~/dotfiles/.config/nvim/init.vim<cr>


nnoremap <leader>f :Ranger<cr>
nnoremap <c-p> :FZF<cr>




