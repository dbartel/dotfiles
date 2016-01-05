"Pathogen for package management
execute pathogen#infect()

"Colorscheme & font
set background=dark
colorscheme base16-mocha
set guifont=Fira_Mono:h11:cANSI

"Text Editing
"" Syntax & Autoindent
syntax on
filetype indent on
set autoindent
"" Tabbing
set tabstop=4
set shiftwidth=4
"" Searching 
set hlsearch
set incsearch
"" Backspace acts as normal
set backspace=2
"" Center cursor to middle of screen
set scrolloff=999

"auto-reload file on external change
set autoread

"NERDTree
"" Show Hidden Files
let NERDTreeShowHidden=1
"" Ignore specific files
let NERDTreeIgnore = ['\.pyc$\|\.swp$\|\.o$\|\.exe$']
"" Map F2 to NERDTreeToggle
map <F2> :NERDTreeToggle<CR>

" Goyo
"" Activate Limelight when goyo mode is active
autocmd! User GoyoEnter Limelight
autocmd! User GoyoLeave Limelight!

" airline
"" Activate airline right away
set laststatus=2

