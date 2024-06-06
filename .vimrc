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

set guicursor=n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50

if has('clipboard')
  " set clipboard=unnamedplus
  set clipboard=unnamed
endif

" WSL yank support
let s:clip = '/mnt/c/Windows/System32/clip.exe'  " change this path according to your mount point
if executable(s:clip)
  set ff=unix
  augroup WSLYank
    autocmd!
    autocmd TextYankPost * if v:event.operator ==# 'y' | call system(s:clip, @0) | endif
  augroup END
endif

colorscheme ff8
" colorscheme dracula
