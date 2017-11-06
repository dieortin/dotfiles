set nocompatible              " be iMproved, required
filetype off                  " required

let mapleader = ',' " Add the leader key before plugins are loaded
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'sickill/vim-monokai'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'lervag/vimtex'
Plugin 'Valloric/YouCompleteMe'
Plugin 'rdnetto/YCM-Generator'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif " Autoclose vim if last window is NERDTree
syntax enable
set number
filetype on " Turn file type detection back on
set hlsearch " Highlight the results of searchs
set incsearch " Show the matches while you type the search
set ignorecase
set smartcase " Case-sensitive just if the search contains caps
set shiftwidth=2
set tabstop=2
set background=dark
colorscheme monokai
let g:airline_solarized_bg='dark'
let g:airline_powerline_fonts = 1
let g:clang_library_path='/Applications/Xcode-beta.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib/libclang.dylib'
set backspace=indent,eol,start " backspace over everything in insert mode
let g:tex_flavor = 'tex'
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
let g:ycm_add_preview_to_completeopt = 1
let g:ycm_autoclose_preview_window_after_insertion = 1
map [[ ?{<CR>w99[{
map ][ /}<CR>b99]}
map ]] j0[[%/{<CR>
map [] k$][%?}<CR>
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
map <C-n> :NERDTreeToggle<CR>
