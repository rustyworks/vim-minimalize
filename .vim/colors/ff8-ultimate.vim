" Filename: ff8-ultimate.vim
" Description: Fully custom color

" foreground:       #e7e2e5
" background:       #52494b

" comment:          #a5a1a6
" selection:        #636164

" sky blue:         #6ab2ed
" mint green:       #98ff98
" tomato red:       #ff6347
" sunflower yellow: #ffda03

set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "ff8-ultimate"

" Basic Colors
hi Normal           guifg=#e7e2e5 guibg=#52494b
hi StatusLine       guifg=NONE    guibg=#ff6347
hi StatusLineNC     guifg=NONE    guibg=#52494b
hi StatusLineTerm   guifg=NONE    guibg=#ff6347
hi StatusLineTermNC guifg=NONE    guibg=#52494b
hi WildMenu         guifg=#52494b guibg=#6ab2ed

hi Comment      guifg=#a5a1a6 guibg=NONE
hi ColorColumn  guifg=NONE    guibg=#636164
hi CursorColumn guifg=NONE    guibg=#636164
hi CursorLine   guifg=NONE    guibg=#636164
hi clear CursorLine  # prevent cursorline color
hi CursorLineNr guifg=NONE    guibg=#ff6347

hi DiffAdd     guifg=#98ff98 guibg=NONE
hi DiffAdded   guifg=#98ff98 guibg=NONE
hi DiffChange  guifg=#6ab2ed guibg=NONE
hi DiffDelete  guifg=#ff6347 guibg=NONE
hi DiffRemove  guifg=#ff6347 guibg=NONE
hi DiffText    guifg=#52494b guibg=#6ab2ed
hi Directory   guifg=#6ab2ed guibg=NONE

hi Error       guifg=#ff6347 guibg=NONE
hi ErrorMsg    guifg=#e7e2e5 guibg=#ff6347

hi FoldColumn  guifg=NONE    guibg=#636164
hi Folded      guifg=#a5a1a6 guibg=#636164

hi IncSearch   guifg=#6ab2ed guibg=#52494b

hi LineNr      guifg=#a5a1a6 guibg=NONE

hi MoreMsg     guifg=#e7e2e5

hi NonText     guifg=#636164

hi Pmenu         guifg=NONE    guibg=#636164
hi PmenuSbar     guifg=NONE    guibg=#636164
hi PmenuSel      guifg=NONE    guibg=#636164
hi PmenuThumb    guifg=NONE    guibg=#636164
hi PmenuMatch    guifg=#6ab2ed guifg=#636164
hi PmenuMatchSel guifg=#6ab2ed guifg=#636164

hi Question   guifg=#e7e2e5

hi Search       guifg=#98ff98 guibg=NONE gui=inverse cterm=inverse
hi SignColumn   guifg=#a5a1a6 guibg=NONE

hi TabLine      guifg=#a5a1a6 guibg=#636164
hi TabLineFill  guifg=#636164 guibg=#636164
hi TabLineSel   guifg=#e7e2e5 guibg=NONE
hi Title        guifg=#98ff98 guibg=NONE
hi Todo         guifg=#6ab2ed guibg=NONE gui=inverse cterm=inverse

hi VertSplit    guifg=#a5a1a6 guibg=#636164
hi Visual       guifg=NONE    guibg=#636164
hi VisualNOS    guifg=NONE    guibg=#636164

hi WarningMsg   guifg=#52494b guibg=#ffda03

hi SpellBad     cterm=underline
hi SpellLocal   cterm=underline
hi SpellCap     cterm=underline
hi SpellRare    cterm=underline

hi Constant     guifg=#6ab2ed
hi String       guifg=#ffda03
hi Character    guifg=#ff6347
hi Number       guifg=#6ab2ed
hi Boolean      guifg=#6ab2ed
hi Float        guifg=#6ab2ed

hi Identifier   guifg=#e7e2e5
hi Function     guifg=#98ff98

hi Statement    guifg=#ff6347
hi Conditional  guifg=#ff6347
hi Repeat       guifg=#ff6347
hi Label        guifg=#ff6347
hi Operator     guifg=#ff6347
hi Keyword      guifg=#ff6347
hi Exception    guifg=#ff6347

hi PreProc      guifg=#ff6347
hi Include      guifg=#ff6347
hi Define       guifg=#ff6347
hi Macro        guifg=#ff6347
hi PreCondit    guifg=#ff6347
hi StorageClass guifg=#ff6347
hi Structure    guifg=#6ab2ed
hi Typedef      guifg=#ff6347

hi Type guifg=#6ab2ed

hi Delimiter guifg=#e7e2e5

hi Special            guifg=#ff6347
hi SpecialComment     guifg=#6ab2ed
hi Tag                guifg=#6ab2ed
hi helpHyperTextJump  guifg=#6ab2ed
hi helpCommand        guifg=#6ab2ed
hi helpExample        guifg=#98ff98
hi helpBacktick       guifg=#ff6347
hi Conceal            guifg=#6ab2ed

hi MatchParen         guifg=#ff6347 guibg=NONE
