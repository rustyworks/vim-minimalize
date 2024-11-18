" Filename: ff8-color.vim
" Description: This is colorscheme from ff8 dialog box

" foreground: #e7e2e5
" background: #636164
" background-darker: #52494a

" comment: #a5a1a6
" selection: #44475a

" blue: #6ab2ed
" green: #01ec04
" red: #ee0000
" yellow: #e0da06

set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "ff8-color"

" Basic Colors
hi Normal           guifg=#e7e2e5 guibg=#636164
hi StatusLine       guifg=NONE    guibg=#ee0000
hi StatusLineNC     guifg=NONE    guibg=#636164
hi StatusLineTerm   guifg=NONE    guibg=#ee0000
hi StatusLineTermNC guifg=NONE    guibg=#636164
hi WildMenu         guifg=#636164 guibg=#6ab2ed

hi Comment      guifg=#a5a1a6 guibg=NONE
hi ColorColumn  guifg=NONE    guibg=#52494a
hi CursorColumn guifg=NONE    guibg=#44475a
hi CursorLine   guifg=NONE    guibg=#44475a
hi CursorLineNr guifg=NONE    guibg=#e0da06

hi DiffAdd     guifg=#01ec04 guibg=NONE
hi DiffAdded   guifg=#01ec04 guibg=NONE
hi DiffChange  guifg=#6ab2ed guibg=NONE
hi DiffDelete  guifg=#ee0000 guibg=NONE
hi DiffRemove  guifg=#ee0000 guibg=NONE
hi DiffText    guifg=#636164 guibg=#6ab2ed
hi Directory   guifg=#6ab2ed guibg=NONE

hi Error       guifg=#ee0000 guibg=NONE
hi ErrorMsg    guifg=#e7e2e5 guibg=#ee0000

hi FoldColumn  guifg=NONE    guibg=#44475a
hi Folded      guifg=#a5a1a6 guibg=#52494a

hi IncSearch   guifg=#6ab2ed guibg=#636164

hi LineNr      guifg=#a5a1a6 guibg=NONE

hi MoreMsg     guifg=#e7e2e5

hi NonText     guifg=#44475a

hi Pmenu         guifg=NONE    guibg=#52494a
hi PmenuSbar     guifg=NONE    guibg=#52494a
hi PmenuSel      guifg=NONE    guibg=#44475a
hi PmenuThumb    guifg=NONE    guibg=#44475a
hi PmenuMatch    guifg=#6ab2ed guifg=#52494a
hi PmenuMatchSel guifg=#6ab2ed guifg=#44475a

hi Question   guifg=#e7e2e5

hi Search       guifg=#01ec04 guibg=NONE gui=inverse cterm=inverse
hi SignColumn   guifg=#a5a1a6 guibg=NONE

hi TabLine      guifg=#a5a1a6 guibg=#52494a
hi TabLineFill  guifg=NONE    guibg=#52494a
hi TabLineSel   guifg=#e7e2e5 guibg=NONE
hi Title        guifg=#01ec04 guibg=NONE
hi Todo         guifg=#6ab2ed guibg=NONE gui=inverse cterm=inverse

hi VertSplit    guifg=#a5a1a6 guibg=#52494a
hi Visual       guifg=NONE    guibg=#44475a
hi VisualNOS    guifg=NONE    guibg=#44475a

hi WarningMsg   guifg=#636164 guibg=#e0da06

hi SpellBad     cterm=underline
hi SpellLocal   cterm=underline
hi SpellCap     cterm=underline
hi SpellRare    cterm=underline

hi Constant     guifg=#6ab2ed
hi String       guifg=#e0da06
hi Character    guifg=#ee0000
hi Number       guifg=#6ab2ed
hi Boolean      guifg=#6ab2ed
hi Float        guifg=#6ab2ed

hi Identifier   guifg=#e7e2e5
hi Function     guifg=#01ec04

hi Statement    guifg=#ee0000
hi Conditional  guifg=#ee0000
hi Repeat       guifg=#ee0000
hi Label        guifg=#ee0000
hi Operator     guifg=#ee0000
hi Keyword      guifg=#ee0000
hi Exception    guifg=#ee0000

hi PreProc      guifg=#ee0000
hi Include      guifg=#ee0000
hi Define       guifg=#ee0000
hi Macro        guifg=#ee0000
hi PreCondit    guifg=#ee0000
hi StorageClass guifg=#ee0000
hi Structure    guifg=#ee0000
hi Typedef      guifg=#ee0000

hi Type guifg=#6ab2ed

hi Delimiter guifg=#e7e2e5

hi Special            guifg=#ee0000
hi SpecialComment     guifg=#6ab2ed
hi Tag                guifg=#6ab2ed
hi helpHyperTextJump  guifg=#6ab2ed
hi helpCommand        guifg=#6ab2ed
hi helpExample        guifg=#01ec04
hi helpBacktick       guifg=#ee0000
hi MatchParen         guifg=#01ec04
hi Conceal            guifg=#6ab2ed
