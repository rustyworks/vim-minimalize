set rtp+=~/.vim/bundle/Vundle.vim/

runtime! custom_preconfig/*.vim
runtime! common_config/*.vim
runtime! custom_config/*.vim

if exists('+termguicolors')
  set t_Co=256
  set termguicolors
  " https://superuser.com/questions/457911/in-vim-background-color-changes-on-scrolling
  " Disable Background Color Erase (BCE) so that color schemes
  " work properly when Vim is used inside tmux and GNU screen.
  set t_ut=
endif
" fix termguicolor drop colors under tmux
if &term =~# '^screen'
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
endif

if has('clipboard')
  " Should install xclip or wl-clipboard
  set clipboard=unnamed,unnamedplus
endif

colorscheme ff8
