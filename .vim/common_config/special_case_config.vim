" True color for vim
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

" Same buffer for yank and paste
if has('clipboard')
  " Should install xclip or wl-clipboard first
  set clipboard=unnamed,unnamedplus
endif

" Enhance python number highlighting for vim < 9.0
" https://vi.stackexchange.com/questions/40124/how-to-get-neovim-to-highlight-underscore-numbers-like-normal-numbers
if &filetype == 'python' && !exists("python_no_number_highlight")
  " https://github.com/vim/vim/blob/master/runtime/syntax/python.vim
  autocmd Syntax python syn match pythonNumber "\<0[xX]\%(_\=\x\)\+\>"
  autocmd Syntax python syn match pythonNumber "\<0[bB]\%(_\=[01]\)\+\>"
  autocmd Syntax python syn match pythonNumber "\<\%([1-9]\%(_\=\d\)*\|0\+\%(_\=0\)*\)\>"
  autocmd Syntax python syn match pythonNumber "\<\d\%(_\=\d\)*[jJ]\>"
  autocmd Syntax python syn match pythonNumber "\<\d\%(_\=\d\)*[eE][+-]\=\d\%(_\=\d\)*[jJ]\=\>"
  autocmd Syntax python syn match pythonNumber "\<\d\%(_\=\d\)*\.\%([eE][+-]\=\d\%(_\=\d\)*\)\=[jJ]\=\%(\W\|$\)\@="
  autocmd Syntax python syn match pythonNumber "\%(^\|\W\)\zs\%(\d\%(_\=\d\)*\)\=\.\d\%(_\=\d\)*\%([eE][+-]\=\d\%(_\=\d\)*\)\=[jJ]\=\>"
end
