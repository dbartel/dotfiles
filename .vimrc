"Pathogen package management
execute pathogen#infect()

"Colorscheme & font
set background=dark
colorscheme base16-mocha
set guifont=Fira_Mono:h11:cANSI

"Text Editing
syntax on
filetype indent on
set autoindent
set tabstop=4
set shiftwidth=4
set hlsearch
set incsearch
set backspace=2

"auto-reload file on external change
set autoread

"NERDTree
let NERDTreeShowHidden=1
map <F2> :NERDTreeToggle<CR>
"Set to Project location
cd c:/Projects

" Goyo
autocmd! User GoyoEnter Limelight
autocmd! User GoyoLeave Limelight!


