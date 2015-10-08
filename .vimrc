set nocompatible              " be iMproved, required
filetype off                  " required

" https://github.com/pangloss/vim-javascript#a-quick-note-on-regexes
syntax enable

set number
set cursorline

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" custom plugins
Plugin 'editorconfig/editorconfig-vim'
Plugin 'yosiat/oceanic-next-vim'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'

Plugin 'scrooloose/nerdtree'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" open NERDTree automatically when vim starts up if no files were specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" map specific key / shortcut to open NERDTree
map <C-n> :NERDTreeToggle<CR>

" set color scheme
colorscheme OceanicNext

" Move between splits
nmap <silent> <A-Up> :wincmd k<CR>
nmap <silent> <A-Down> :wincmd j<CR>
nmap <silent> <A-Left> :wincmd h<CR>
nmap <silent> <A-Right> :wincmd l<CR>

