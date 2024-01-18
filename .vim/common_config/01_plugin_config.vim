" Plugins are managed by Vundle. Once VIM is open run :BundleInstall to
" install plugins.
 call vundle#rc()

" Plugins requiring no additional configuration or keymaps
  Bundle "terryma/vim-multiple-cursors"
  Bundle "tomtom/tcomment_vim.git"
  Bundle "tpope/vim-fugitive.git"
  Bundle "Vimjas/vim-python-pep8-indent"
  Bundle "leafgarland/typescript-vim"
  Bundle "vim-scripts/matchit.zip"

" Set autopair only on braces. Exclude all quotes.
  Bundle "jiangmiao/auto-pairs"
  let g:AutoPairs = {'(':')', '[':']', '{':'}'}

"Supertab code completion"
  Bundle "ervandew/supertab.git"
  " This much faster than contextDiscover
  let g:SuperTabCompletionContexts = ['s:ContextText']
  let g:SuperTabContextTextOmniPrecedence = ['&omnifunc']
  " let g:SuperTabCompletionContexts = ['s:ContextText', 's:ContextDiscover']
  let g:SuperTabContextDefaultCompletionType = "<c-n>"

" CtrlP
  Bundle "ctrlpvim/ctrlp.vim"
    nnoremap <Leader>b :<C-U>CtrlPBuffer<CR>
    nnoremap <Leader>t :<C-U>CtrlP<CR>
    " To enable copy paste using ctrl+v
    let g:ctrlp_prompt_mappings = {
          \ 'PrtInsert("c")':       ['<MiddleMouse>', '<insert>', '<c-v>'],
          \ }
    nmap <Leader>v :<C-U>CtrlP<CR><insert>

    let g:ctrlp_switch_buffer = 0
    let g:ctrlp_working_path_mode = 0
    let g:ctrlp_user_command = {
          \    'types': {
          \      1: [
          \        '.git',
          \        'cd %s &&
          \         git ls-files . -co --exclude-standard
          \         | awk ''{ print length, $0 }''
          \         | sort -n -s
          \         | cut -d" " -f2-'
          \      ],
          \    },
          \    'fallback': 'find %s -type f'
          \  }

" AG aka The Silver Searcher
  Bundle 'rking/ag.vim.git'
    nmap g/ :Ag!<space>
    nmap g* :Ag! -w <C-R><C-W><space>
    nmap ga :AgAdd!<space>
    nmap gn :cnext<CR>
    nmap gp :cprev<CR>
    nmap gq :ccl<CR>
    nmap gl :cwindow<CR>

" NERDTree for project drawer
  Bundle "scrooloose/nerdtree.git"
    let NERDTreeHijackNetrw = 0
    " Let unused file not shown in NERDTree
    let NERDTreeIgnore = [
          \ '\.pyc$', '__pycache__$',
          \ '\.git$', 
          \ '\.idea$', '\.vscode$', 
          \ ]
    let NERDTreeShowHidden=1
    nmap <leader>g :NERDTreeToggle<CR>
    nmap <leader>G :NERDTreeFind<CR>
    nmap <leader>H :NERDTree<CR>

" UndoTree
  Bundle "mbbill/undotree.git"
    map <Leader>h :UndotreeToggle<CR>
    if has("persistent_undo")
      set undodir=~/.undodir/
      " set undofile
    endif

" Make js, ts, jsx, tsx to typescriptreact
  Bundle "peitalin/vim-jsx-typescript"
  autocmd BufNewFile,BufRead *.js,*.ts,*.tsx,*.jsx set filetype=typescriptreact
