" Plugins are managed by Vundle. Once VIM is open run :BundleInstall to
" install plugins.
 call vundle#rc()

" Plugins requiring no additional configuration or keymaps
  Bundle "Vimjas/vim-python-pep8-indent"
  Bundle "leafgarland/typescript-vim"
  Bundle "terryma/vim-multiple-cursors"
  Bundle "tomtom/tcomment_vim.git"
  Bundle "tpope/vim-fugitive.git"
  Bundle "vim-scripts/matchit.zip"

" Sticky context scroll
  Bundle "wellle/context.vim"
  let g:context_enabled = 1
  let g:context_filetype_blacklist = []

" Alternative colorscheme
  Bundle "dracula/vim", { "name": "dracula" }
  let g:dracula_bold = 0
  let g:dracula_italic = 0
  let g:dracula_underline = 0

" Autopairs
  Bundle "jiangmiao/auto-pairs"
  " let g:AutoPairs = {'(':')', '[':']', '{':'}'}
  let g:AutoPairsOnlyWhitespace = 1  " https://github.com/jiangmiao/auto-pairs/pull/120/files

" Tagbar for navigation by tags using CTags
  Bundle "majutsushi/tagbar.git"
    let g:tagbar_autofocus = 1
    map <Leader>rt :!ctags --extra=+f -R *<CR><CR>
    map <Leader>. :TagbarToggle<CR>
    " to prevent sorting by alphabetically
    let g:tagbar_sort = 0

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

" Better syntax highlighting for Python
  Bundle "vim-python/python-syntax"
  let g:python_highlight_all = 1
  " Need to do workaround for it
  let g:python_highlight_type_annotations = 1
  let g:python_highlight_func_calls = 1
  let g:python_highlight_type_annotations_regex = 0

" Distraction free
  Bundle "junegunn/limelight.vim"
  let g:limelight_priority = -1 "highlight search
  let g:limelight_default_coefficient = 0.8
  " Number of preceding/following paragraphs to include (default: 0)
  " let g:limelight_paragraph_span = 1

" Make js, ts, jsx, tsx to typescriptreact
  Bundle "peitalin/vim-jsx-typescript"
  autocmd BufNewFile,BufRead *.js,*.ts,*.tsx,*.jsx set filetype=typescriptreact

" Make all html, htm, nunjucks, nunjs, njk into jinja
  Bundle "Glench/Vim-Jinja2-Syntax"
  autocmd BufNewFile,BufRead *.html,*.htm,*.nunjucks,*.nunjs,*.njk set filetype=jinja.html
