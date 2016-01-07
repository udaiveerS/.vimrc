"no swap files
:set noswapfile

"lines
set number                      "Line numbers are good
set backspace=indent,eol,start  "Allow backspace in insert mode
set history=1000                "Store lots of :cmdline history
set showcmd                     "Show incomplete cmds down the bottom
set showmode                    "Show current mode down the bottom
set gcr=a:blinkon0              "Disable cursor blink
set visualbell                  "No sounds
set autoread                    "Reload files changed outside vim

"custom mappings in inset mode 
"Gui mode
imap <C-h> <Left>
imap <C-x> <Right>
" Gif config

"Indent
set autoindent
set smartindent
set smarttab
set shiftwidth=4
set softtabstop=4
set tabstop=4
set expandtab

set nowrap       "Don't wrap lines
set linebreak    "Wrap lines at convenient points

filetype plugin on
filetype indent on

"color scheme"
colo murphy 
syntax on 

execute pathogen#infect()
call pathogen#helptags()

"Auto start NerdTree 
autocmd vimenter * NERDTree

"Close NERDTree on file close 
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
