" ==========================
" ngui.vim
" A neovim colorscheme
" ==========================

scriptencoding utf-8

hi clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name="ngui"


" ==========================
" Highlighting Function
" ==========================

fun! <sid>hi(group, fg, bg, attr)
  if !empty(a:fg)
    exec "hi " . a:group . " guifg=" . a:fg.gui . " ctermfg=" .  a:fg.cterm16
  endif
  if !empty(a:bg)
    exec "hi " . a:group . " guibg=" . a:bg.gui . " ctermbg=" .  a:bg.cterm16
  endif
  if a:attr != ""
    exec "hi " . a:group . " gui=" . a:attr . " cterm=" . a:attr
  endif
endfun


" ==========================
" Color Variables
" ==========================

let s:black = { "gui": "#383c3e", "cterm16": "0" }
let s:dark_red = { "gui": "#d72638", "cterm16": "1" }
let s:dark_green = { "gui": "#88b92d", "cterm16": "2" }
let s:dark_yellow = { "gui": "#eb8413", "cterm16": "3" }
let s:dark_blue = { "gui": "#1e8bac", "cterm16": "4" }
let s:dark_magenta = { "gui": "#be4264", "cterm16": "5" }
let s:dark_cyan = { "gui": "#1ba595", "cterm16": "6" }
let s:grey = { "gui": "#dddddd", "cterm16": "7" }
let s:dark_grey = { "gui": "#53585b", "cterm16": "8" }
let s:red = { "gui": "#d72638", "cterm16": "9" }
let s:green = { "gui": "#88b92d", "cterm16": "10" }
let s:yellow = { "gui": "#f19d1a", "cterm16": "11" }
let s:blue = { "gui": "#1e8bac", "cterm16": "12" }
let s:magenta = { "gui": "#be4264", "cterm16": "13" }
let s:cyan = { "gui": "#1ba595", "cterm16": "14" }
let s:white = { "gui": "#e5e5e5", "cterm16": "15" }
let s:none = { "gui": 'NONE', 'cterm16': 'NONE' }

" ==========================
" Definitions
" ==========================
"    <sid>hi(GROUP, FOREGROUND, BACKGROUND, ATTRIBUTE)

" Editor
call <sid>hi('Cursor', s:white, s:none, 'bold')
call <sid>hi('ColorColumn', s:none, s:black, 'none')
call <sid>hi('CursorLine', s:none, s:none, 'bold')
call <sid>hi('CursorLineNr', s:grey, s:none, 'bold')
call <sid>hi('Directory', s:blue, s:none, 'none')
call <sid>hi('ErrorMsg', s:red, s:none, 'none')
call <sid>hi('Folded', s:dark_grey, s:none, 'none')
call <sid>hi('IncSearch', s:black, s:cyan, 'none')
call <sid>hi('LineNr', s:dark_grey, s:none, 'none')
call <sid>hi('SignColumn', s:none, s:none, 'none')
call <sid>hi('MatchParen', s:cyan, s:none, 'bold')
call <sid>hi('ModeMsg', s:white, s:none, 'none')
call <sid>hi('MoreMsg', s:cyan, s:none, 'bold')
call <sid>hi('NonText', s:dark_grey, s:none, 'none')
call <sid>hi('Normal', s:grey, s:none, 'none')
call <sid>hi('Pmenu', s:black, s:dark_grey, 'none')
call <sid>hi('PmenuSel', s:black, s:blue, 'none')
call <sid>hi('PmenuBar', s:black, s:none, 'none')
call <sid>hi('PmenuThumb', s:none, s:grey, 'none')
call <sid>hi('Question', s:cyan, s:none, 'bold')
call <sid>hi('QuickFixLine', s:black, s:cyan, 'none')
call <sid>hi('Search', s:black, s:yellow, 'none')
call <sid>hi('SpecialKey', s:grey, s:none, 'none')
call <sid>hi('StatusLine', s:white, s:none, 'bold')
call <sid>hi('StatusLineNC', s:dark_grey, s:none, 'none')
call <sid>hi('TabLine', s:dark_grey, s:none, 'none')
call <sid>hi('TabLineFill', s:dark_grey, s:none, 'none')
call <sid>hi('TabLineSel', s:black, s:blue, 'none')
call <sid>hi('Title', s:green, s:none, 'none')
call <sid>hi('VertSplit', s:dark_grey, s:none, 'none')
call <sid>hi('Visual', s:black, s:grey, 'none')
call <sid>hi('VisualNOS', s:black, s:none, 'none')
call <sid>hi('WildMenu', s:black, s:white, 'none')

" General
call <sid>hi('Boolean', s:yellow, s:none, 'none')
call <sid>hi('Character', s:yellow, s:none, 'none')
call <sid>hi('Comment', s:dark_grey, s:none, 'none')
call <sid>hi('Conditional', s:magenta, s:none, 'none')
call <sid>hi('Constant', s:blue, s:none, 'none')
call <sid>hi('Define', s:blue, s:none, 'none')
call <sid>hi('Delimiter', s:grey, s:none, 'none')
call <sid>hi('DiffAdd', s:green, s:none, 'none')
call <sid>hi('DiffChange', s:yellow, s:none, 'none')
call <sid>hi('DiffDelete', s:dark_red, s:none, 'none')
call <sid>hi('DiffText', s:dark_grey, s:none, 'none')
call <sid>hi('Error', s:red, s:none, 'none')
call <sid>hi('Exception', s:blue, s:none, 'none')
call <sid>hi('Float', s:yellow, s:none, 'none')
call <sid>hi('Function', s:magenta, s:none, 'none')
call <sid>hi('Identifier', s:white, s:none, 'bold')
call <sid>hi('Include', s:blue, s:none, 'none')
call <sid>hi('Keyword', s:blue, s:none, 'none')
call <sid>hi('Label', s:blue, s:none, 'none')
call <sid>hi('Marco', s:cyan, s:none, 'none')
call <sid>hi('Number', s:yellow, s:none, 'none')
call <sid>hi('Operator', s:magenta, s:none, 'none')
call <sid>hi('PreCondit', s:dark_blue, s:none, 'none')
call <sid>hi('PreProc', s:blue, s:none, 'none')
call <sid>hi('Repeat', s:blue, s:none, 'none')
call <sid>hi('Special', s:grey, s:none, 'none')
call <sid>hi('SpecialComment', s:yellow, s:dark_grey, 'none')
call <sid>hi('SpellBad', s:red, s:none, 'underline')
call <sid>hi('SpellCap', s:dark_yellow, s:none, 'underline')
call <sid>hi('SpellLocal', s:dark_yellow, s:none, 'underline')
call <sid>hi('SpellRare', s:dark_yellow, s:none, 'underline')
call <sid>hi('Statement', s:blue, s:none, 'none')
call <sid>hi('StorageClass', s:yellow, s:none, 'none')
call <sid>hi('Structure', s:dark_green, s:none, 'none')
call <sid>hi('String', s:green, s:none, 'none')
call <sid>hi('Tag', s:yellow, s:none, 'none')
call <sid>hi('Title', s:none, s:none, 'bold')
call <sid>hi('Todo', s:white, s:black, 'reverse')
call <sid>hi('Type', s:white, s:none, 'none')
call <sid>hi('TypeDef', s:yellow, s:none, 'none')
call <sid>hi('Underlined', s:none, s:none, 'underline')
call <sid>hi('WarningMsg', s:red, s:none, 'bold')


" ==========================
" Plugins
" ==========================

call <sid>hi('TelescopeBorder', s:black, s:none, 'none')
call <sid>hi('TelescopeTitle', s:white, s:none, 'bold')
call <sid>hi('TelescopeSelection', s:black, s:blue, 'none')
call <sid>hi('TelescopeMatching', s:black, s:white, 'italics')

call <sid>hi('Directory', s:black, s:white, 'none')

" ==========================
" Misc
" ==========================

set background=dark


" vim: set ft=vim:
