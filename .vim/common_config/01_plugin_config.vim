" Plugins are managed by Vundle. Once VIM is open run :BundleInstall to
" install plugins.
 call vundle#rc()

" Plugins requiring no additional configuration or keymaps
  Bundle "sheerun/vim-polyglot"
  Bundle "terryma/vim-multiple-cursors"
  Bundle "tomtom/tcomment_vim.git"
  Bundle "tpope/vim-fugitive.git"
  Bundle "vim-scripts/matchit.zip"
  Bundle "jremmen/vim-ripgrep"

" Sticky context scroll
  Bundle "wellle/context.vim"
  let g:context_enabled = 0
  let g:context_filetype_blacklist = []
  nmap <Leader>x :ContextToggle<cr>

" Alternative colorscheme
  Bundle "dracula/vim", { "name": "dracula" }
  let g:dracula_bold = 0
  let g:dracula_italic = 0
  let g:dracula_underline = 0

" Autopairs
  Bundle "jiangmiao/auto-pairs"
  let g:AutoPairs = {
        \'(':')',
        \'[':']',
        \'{':'}',
        \'{%':'%}',
        \}
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
    let g:ctrlp_clear_cache_on_exit = 1
    let g:ctrlp_cache_dir = '/tmp/ctrlp'

    let g:ctrlp_lazy_update = 1
    let g:ctrlp_user_command = {
          \    'types': {
          \      1: [
          \        '.git',
          \        'cd %s &&
          \         git ls-files . -co --exclude-standard
          \         | grep -Ev ''(^|/)(\.git|\.hg|\.svn|node_modules|venv|__pycache__)(/|$)''
          \         | grep -Ev ''\.(7z|DS_Store|bmp|bz2|class|dll|exe|gif|gz|ico|jpeg|jpg|log|o|obj|out|png|pyc|rar|so|svg|swo|swp|tar\.bz2|tar\.gz|zip)$''
          \         | awk ''{ print length, $0 }''
          \         | sort -n -s
          \         | cut -d" " -f2-'
          \      ],
          \    },
          \    'fallback': 'find %s -type f'
          \  }
    if executable('rg')
      let g:ctrlp_user_command = '
            \ rg %s --files --color=never --glob ""
            \ --hidden --glob "!.git/*" --glob "!.hg/*" --glob "!.svn/*" --glob "!node_modules/*" --glob "!venv/*" --glob "!__pycache__/*"
            \ --glob "!*.{7z,DS_Store,bmp,bz2,class,dll,exe,gif,gz,ico,jpeg,jpg,log,o,obj,out,png,pyc,rar,so,svg,swo,swp,tar.bz2,tar.gz,zip}"
            \ | awk ''{ print length, $0 }''
            \ | sort -n -s
            \ | cut -d" " -f2-'
      let g:ctrlp_use_caching = 0
    endif

" NERDTree for project drawer
  Bundle "preservim/nerdtree"
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
    map <Leader>u :UndotreeToggle<CR>
    if has("persistent_undo")
      set undodir=~/.undodir/
      " set undofile
    endif

" Make all html, htm, nunjucks, nunjs, njk into jinja
  Bundle "Glench/Vim-Jinja2-Syntax"
  autocmd BufNewFile,BufRead *.html,*.htm,*.nunjucks,*.nunjs,*.njk set filetype=jinja.html
