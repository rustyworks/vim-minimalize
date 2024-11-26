" Filename: ff8-color.vim
" Description: This is colorscheme from ff8 dialog box

" foreground: #e7e2e5
" background: #636164

" comment: #a5a1a6
" selection: #424242

" blue: #6ab2ed
" green: #01ec04
" red: #ec0203
" yellow: #e0da06

set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "ff8-color"

" Basic Colors
hi Normal           guifg=#e7e2e5 guibg=#636164
hi StatusLine       guifg=NONE    guibg=#ec0203
hi StatusLineNC     guifg=NONE    guibg=#636164
hi StatusLineTerm   guifg=NONE    guibg=#ec0203
hi StatusLineTermNC guifg=NONE    guibg=#636164
hi WildMenu         guifg=#636164 guibg=#6ab2ed

hi Comment      guifg=#a5a1a6 guibg=NONE
hi ColorColumn  guifg=NONE    guibg=#424242
hi CursorColumn guifg=NONE    guibg=#424242
hi CursorLine   guifg=NONE    guibg=#424242
hi CursorLineNr guifg=NONE    guibg=#ec0203

hi DiffAdd     guifg=#01ec04 guibg=NONE
hi DiffAdded   guifg=#01ec04 guibg=NONE
hi DiffChange  guifg=#6ab2ed guibg=NONE
hi DiffDelete  guifg=#ec0203 guibg=NONE
hi DiffRemove  guifg=#ec0203 guibg=NONE
hi DiffText    guifg=#636164 guibg=#6ab2ed
hi Directory   guifg=#6ab2ed guibg=NONE

hi Error       guifg=#ec0203 guibg=NONE
hi ErrorMsg    guifg=#e7e2e5 guibg=#ec0203

hi FoldColumn  guifg=NONE    guibg=#424242
hi Folded      guifg=#a5a1a6 guibg=#424242

hi IncSearch   guifg=#6ab2ed guibg=#636164

hi LineNr      guifg=#a5a1a6 guibg=NONE

hi MoreMsg     guifg=#e7e2e5

hi NonText     guifg=#424242

hi Pmenu         guifg=NONE    guibg=#424242
hi PmenuSbar     guifg=NONE    guibg=#424242
hi PmenuSel      guifg=NONE    guibg=#424242
hi PmenuThumb    guifg=NONE    guibg=#424242
hi PmenuMatch    guifg=#6ab2ed guifg=#424242
hi PmenuMatchSel guifg=#6ab2ed guifg=#424242

hi Question   guifg=#e7e2e5

hi Search       guifg=#01ec04 guibg=NONE gui=inverse cterm=inverse
hi SignColumn   guifg=#a5a1a6 guibg=NONE

hi TabLine      guifg=#e7e2e5 guibg=#a5a1a6
hi TabLineFill  guifg=#a5a1a6 guibg=#424242
hi TabLineSel   guifg=#e7e2e5 guibg=NONE
hi Title        guifg=#01ec04 guibg=NONE
hi Todo         guifg=#6ab2ed guibg=NONE gui=inverse cterm=inverse

hi VertSplit    guifg=#a5a1a6 guibg=#424242
hi Visual       guifg=NONE    guibg=#424242
hi VisualNOS    guifg=NONE    guibg=#424242

hi WarningMsg   guifg=#636164 guibg=#e0da06

hi SpellBad     cterm=underline
hi SpellLocal   cterm=underline
hi SpellCap     cterm=underline
hi SpellRare    cterm=underline

hi Constant     guifg=#6ab2ed
hi String       guifg=#e0da06
hi Character    guifg=#ec0203
hi Number       guifg=#6ab2ed
hi Boolean      guifg=#6ab2ed
hi Float        guifg=#6ab2ed

hi Identifier   guifg=#e7e2e5
hi Function     guifg=#01ec04

hi Statement    guifg=#ec0203
hi Conditional  guifg=#ec0203
hi Repeat       guifg=#ec0203
hi Label        guifg=#ec0203
hi Operator     guifg=#ec0203
hi Keyword      guifg=#ec0203
hi Exception    guifg=#ec0203

hi PreProc      guifg=#ec0203
hi Include      guifg=#ec0203
hi Define       guifg=#ec0203
hi Macro        guifg=#ec0203
hi PreCondit    guifg=#ec0203
hi StorageClass guifg=#ec0203
hi Structure    guifg=#6ab2ed
hi Typedef      guifg=#ec0203

hi Type guifg=#6ab2ed

hi Delimiter guifg=#e7e2e5

hi Special            guifg=#ec0203
hi SpecialComment     guifg=#6ab2ed
hi Tag                guifg=#6ab2ed
hi helpHyperTextJump  guifg=#6ab2ed
hi helpCommand        guifg=#6ab2ed
hi helpExample        guifg=#01ec04
hi helpBacktick       guifg=#ec0203
hi MatchParen         guifg=#01ec04
hi Conceal            guifg=#6ab2ed
