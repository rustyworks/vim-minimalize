" easy wrap toggling
  nmap <Leader>w :set wrap!<cr>
  nmap <Leader>W :set nowrap<cr>

" mapping the jumping between splits. Hold control while using vim nav.
  nmap <C-J> <C-W>j
  nmap <C-K> <C-W>k
  nmap <C-H> <C-W>h
  nmap <C-L> <C-W>l

" mapping change tab using leader for easier navigation
  noremap <Leader>1 1gt
  noremap <Leader>2 2gt
  noremap <Leader>3 3gt
  noremap <Leader>4 4gt
  noremap <Leader>5 5gt
  noremap <Leader>6 6gt
  noremap <Leader>7 7gt
  noremap <Leader>8 8gt
  noremap <Leader>9 9gt
  noremap <Leader>0 :tablast<cr>

" select the lines which were just pasted
  nnoremap vv `[V`]

" delete all buffers
  map <Leader>d :bufdo bd<cr>

" map spacebar to clear search highlight
  nnoremap <Leader><space> :noh<cr>

" buffer resizing mappings (shift + arrow key)
  nnoremap <S-Up> <c-w>+
  nnoremap <S-Down> <c-w>-
  nnoremap <S-Left> <c-w><
  nnoremap <S-Right> <c-w>>

" reindent the entire file
  map <Leader>I gg=G``<cr>

" disable left-click to prevent accidentally click when using touchpad
  map <LeftMouse> <Nop>

" change directory to current openfile
  nnoremap <leader>cd :cd %:p:h<CR>

" toggle spell checker
  nnoremap <Leader>s :set spell!<cr>


" Functions related keymapping

" clean up trailing whitespace
  nnoremap <Leader>c :StripTrailingWhitespaces<cr>

" clean up carriage return (for wsl)
  nnoremap <Leader>C :StripTrailingCarriageReturn<cr>

" get current filepath
  nnoremap <Leader>r :CopyCurrentFilePath<cr>

" triggering auto complete while pressing tab on local file context
  inoremap <Tab> <C-R>=ContextCompletion()<CR>
  inoremap <S-Tab> <C-R>=ReversedContextCompletion()<CR>

" toggle fold (check general config fold)
  nmap <Leader>z :ToggleFolding<cr>
