set background=light
highlight clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "templeos"

function! s:hi(group, fg, bg, attr)
  let l:cmd = 'highlight ' . a:group
  if a:fg != ''
    let l:cmd .= ' guifg=' . a:fg
  endif
  if a:bg != ''
    let l:cmd .= ' guibg=' . a:bg
  endif
  if a:attr != ''
    let l:cmd .= ' gui=' . a:attr . ' cterm=' . a:attr
  else
    let l:cmd .= ' gui=NONE cterm=NONE'
  endif
  execute l:cmd
endfunction

" ====================
" Editor Colors
" ====================
call s:hi('Normal',       '#000000', '#FFFFFF', '')
call s:hi('Visual',       '#FFFFFF', '#0000AA', '')
call s:hi('VisualNOS',    '#FFFFFF', '#0000AA', '')
call s:hi('Search',       '#000000', '#FFFF55', '')
call s:hi('IncSearch',    '#FFFFFF', '#AA5500', '')
call s:hi('CursorLine',   '',        '#dddddd', 'NONE')
call s:hi('CursorColumn', '',        '#dddddd', '')
call s:hi('ColorColumn',  '',        '#dddddd', '')
call s:hi('LineNr',       '#AAAAAA', '#FFFFFF', '')
call s:hi('CursorLineNr', '#000000', '#dddddd', 'bold')
call s:hi('VertSplit',    '#AAAAAA', '#AAAAAA', '')
call s:hi('StatusLine',   '#FFFFFF', '#0000AA', 'bold')
call s:hi('StatusLineNC', '#000000', '#AAAAAA', '')
call s:hi('WildMenu',     '#000000', '#FFFF55', '')
call s:hi('Folded',       '#555555', '#dddddd', '')
call s:hi('FoldColumn',   '#555555', '#FFFFFF', '')
call s:hi('SignColumn',   '',        '#FFFFFF', '')
call s:hi('Pmenu',        '#000000', '#AAAAAA', '')
call s:hi('PmenuSel',     '#FFFFFF', '#0000AA', '')
call s:hi('PmenuSbar',    '',        '#AAAAAA', '')
call s:hi('PmenuThumb',   '',        '#555555', '')
call s:hi('TabLine',      '#000000', '#AAAAAA', '')
call s:hi('TabLineFill',  '',        '#AAAAAA', '')
call s:hi('TabLineSel',   '#FFFFFF', '#0000AA', 'bold')
call s:hi('MatchParen',   '#000000', '#55FFFF', 'bold')
call s:hi('Cursor',       '#555555', '#5555FF', '')
call s:hi('lCursor',      '#555555', '#5555FF', '')
call s:hi('NonText',      '#AAAAAA', '',        '')
call s:hi('SpecialKey',   '#AAAAAA', '',        '')
call s:hi('Directory',    '#5555FF', '',        '')
call s:hi('Title',        '#AA00AA', '',        'bold')
call s:hi('ErrorMsg',     '#FFFFFF', '#AA0000', '')
call s:hi('WarningMsg',   '#AA5500', '',        '')
call s:hi('MoreMsg',      '#00AA00', '',        '')
call s:hi('ModeMsg',      '#000000', '',        'bold')
call s:hi('Question',     '#00AA00', '',        '')
call s:hi('Conceal',      '#AAAAAA', '#FFFFFF', '')

" ====================
" Syntax Highlighting
" ====================
call s:hi('Comment',      '#AAAAAA', '',        'italic')
call s:hi('Constant',     '#AA0000', '',        '')
call s:hi('String',       '#00AA00', '',        '')
call s:hi('Character',    '#00AA00', '',        '')
call s:hi('Number',       '#AA5500', '',        '')
call s:hi('Boolean',      '#AA0000', '',        '')
call s:hi('Float',        '#AA5500', '',        '')
call s:hi('Identifier',   '#00AAAA', '',        '')
call s:hi('Function',     '#0000AA', '',        'bold')
call s:hi('Statement',    '#AA00AA', '',        'bold')
call s:hi('Conditional',  '#AA00AA', '',        'bold')
call s:hi('Repeat',       '#AA00AA', '',        'bold')
call s:hi('Label',        '#AA00AA', '',        '')
call s:hi('Operator',     '#000000', '',        '')
call s:hi('Keyword',      '#AA00AA', '',        'bold')
call s:hi('Exception',    '#AA0000', '',        'bold')
call s:hi('PreProc',      '#AA5500', '',        '')
call s:hi('Include',      '#AA5500', '',        '')
call s:hi('Define',       '#AA5500', '',        '')
call s:hi('Macro',        '#AA5500', '',        '')
call s:hi('PreCondit',    '#AA5500', '',        '')
call s:hi('Type',         '#0000AA', '',        '')
call s:hi('StorageClass', '#0000AA', '',        '')
call s:hi('Structure',    '#0000AA', '',        '')
call s:hi('Typedef',      '#0000AA', '',        '')
call s:hi('Special',      '#AA00AA', '',        '')
call s:hi('SpecialChar',  '#AA00AA', '',        '')
call s:hi('Tag',          '#00AAAA', '',        '')
call s:hi('Delimiter',    '#000000', '',        '')
call s:hi('SpecialComment','#555555','',        'italic')
call s:hi('Debug',        '#AA0000', '',        '')
call s:hi('Underlined',   '#0000AA', '',        'underline')
call s:hi('Ignore',       '#AAAAAA', '',        '')
call s:hi('Error',        '#FFFFFF', '#AA0000', '')
call s:hi('Todo',         '#000000', '#FFFF55', 'bold')

" ====================
" Diff
" ====================
call s:hi('DiffAdd',      '#000000', '#55FF55', '')
call s:hi('DiffChange',   '#000000', '#5555FF', '')
call s:hi('DiffDelete',   '#000000', '#FF5555', '')
call s:hi('DiffText',     '#000000', '#FFFF55', 'bold')

" ====================
" Git Signs
" ====================
call s:hi('SignAdd',      '#55FF55', '',        '')
call s:hi('SignChange',   '#5555FF', '',        '')
call s:hi('SignDelete',   '#FF5555', '',        '')
call s:hi('GitSignsAdd',  '#55FF55', '',        '')
call s:hi('GitSignsChange','#5555FF','',        '')
call s:hi('GitSignsDelete','#FF5555','',        '')

" ====================
" Diagnostics
" ====================
call s:hi('DiagnosticError',      '#FF5555', '',        '')
call s:hi('DiagnosticWarn',       '#eeaf58', '',        '')
call s:hi('DiagnosticInfo',       '#55FF55', '',        '')
call s:hi('DiagnosticHint',       '#5555FF', '',        '')
call s:hi('DiagnosticUnderlineError', '',    '',        'undercurl')
call s:hi('DiagnosticUnderlineWarn',  '',    '',        'undercurl')
call s:hi('DiagnosticUnderlineInfo',  '',    '',        'undercurl')
call s:hi('DiagnosticUnderlineHint',  '',    '',        'undercurl')

delfunction s:hi
