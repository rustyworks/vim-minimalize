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
  set clipboard=unnamed
endif

" Check whether inside WSL or not
" https://stackoverflow.com/a/57015339
let uname = substitute(system('uname'),'\n','','')
if uname == 'Linux'
  let lines = readfile("/proc/version")
  if lines[0] =~ "Microsoft"
    " WSL yank support 1st approach
    " https://superuser.com/a/1557751
    " let s:clip = '/mnt/c/Windows/System32/clip.exe'  " change this path according to your mount point
    " if executable(s:clip)
    "   set ff=unix
    "   augroup WSLYank
    "     autocmd!
    "     autocmd TextYankPost * if v:event.operator ==# 'y' | call system(s:clip, @0) | endif
    "   augroup END
    " endif

    " WSL yank support 2nd approach
    " https://stackoverflow.com/a/61864749
    autocmd TextYankPost * call system('win32yank.exe -i --crlf', @")
    function! Paste(mode)
      let @" = system('win32yank.exe -o --lf')
      return a:mode
    endfunction
    map <expr> p Paste('p')
    map <expr> P Paste('P')
  endif
endif

colorscheme ff8
