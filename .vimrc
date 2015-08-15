set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-bundler'
Plugin 'tpope/vim-markdown'
Plugin 'vim-ruby/vim-ruby'
Plugin 'kien/ctrlp.vim'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'rking/ag.vim'
Plugin 'godlygeek/tabular'
Plugin 'tpope/vim-commentary'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'edkolev/tmuxline.vim'
Plugin 'itchyny/lightline.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" NERDTree Config
map <C-n> :NERDTreeToggle<CR>
let g:NERDTreeWinSize=20
let g:nerdtree_tabs_open_on_console_startup=1
let g:nerdtree_tabs_smart_startup_focus=1
let g:nerdtree_tabs_synchronize_view=1
let g:nerdtree_tabs_startup_cd=1

" Tmuxline
let g:tmuxline_theme = 'wombat'
let g:tmuxline_preset = 'full'
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ }
