" required for several plugins
  set nocompatible

" enable syntax highlighting
  syntax on

" default color scheme
  set t_Co=256

" Remove bold
  set t_md=

" don't wrap long lines
  set nowrap

" show commands as we type them
  set showcmd

" highlight matching brackets
  set showmatch

" scroll the window when we get near the edge
  set scrolloff=4 sidescrolloff=10

" use 2 spaces for tabs
  set expandtab tabstop=2 softtabstop=2 shiftwidth=2
  set smarttab

" enable line numbers, and don't make them any wider than necessary
  set number numberwidth=2

" show the first match as search strings are typed
  set incsearch

" highlight the search matches
  set hlsearch

" searching is case insensitive when all lowercase
  set ignorecase smartcase

" assume the /g flag on substitutions to replace all matches in a line
  set gdefault

" set temporary directory (don't litter local dir with swp/tmp files)
  set directory=/tmp/

" pick up external file modifications
  set autoread

" don't abandon buffers when unloading
  set hidden

" match indentation of previous line
  set autoindent

" disable auto comments while newline after comments
  autocmd BufNewFile,BufRead * setlocal formatoptions-=o

" perform autoindenting based on filetype plugin
  filetype plugin indent on

" don't blink the cursor
  set guicursor=a:blinkon0

" show current line info (row=current/total,col=current,percent=%p%)
  set ruler rulerformat=%40(row=%l/%L,col=%c,percent=%p%%%)

" show status line
  set laststatus=2

" This userful if you use 'find' command
  set path+=**

" When lines are cropped at the screen bottom, show as much as possible
  set display=lastline

" flip the default split directions to sane ones
  set splitright
  set splitbelow

" don't beep for errors
  set visualbell

" make backspace work in insert mode
  set backspace=indent,eol,start

" highlight trailing whitespace
  set listchars=tab:>\ ,trail:-,extends:>,precedes:<,nbsp:+
  set list

" have the mouse enabled all the time
  set mouse=a

" use tab-complete to see a list of possiblities when entering commands
  set wildmode=list:longest,full

" allow lots of tabs
  set tabpagemax=20

" Enable cursor line position tracking:
  set cursorline

" remember last position in file
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal g'\"" | endif

" Thorfile, Rakefile, Vagrantfile, and Gemfile are Ruby
  au BufRead,BufNewFile {Gemfile,Rakefile,Vagrantfile,Thorfile,config.ru} set ft=ruby

" Ensure the file is reloading the latest file in vim
  au FocusGained,BufEnter * :checktime

" for git, add spell checking and automatic wrapping at 72 columns
  au Filetype gitcommit setlocal spell textwidth=72

" Auto complete without any plugins
" https://linuxhandbook.com/vim-auto-complete/
  set omnifunc=syntaxcomplete#Complete
