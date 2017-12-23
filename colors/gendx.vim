" local syntax file - set colors on a per-machine basis:
" vim: tw=0 ts=4 sw=4
" Vim color file
" see elflord

set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif

let colors_name = "gendx"

hi Normal ctermbg=black
hi Comment ctermfg=darkcyan
hi Constant ctermfg=darkred
hi Special ctermfg=magenta
hi Identifier cterm=bold ctermfg=cyan
hi Statement ctermfg=darkyellow
hi PreProc ctermfg=lightblue
hi Type ctermfg=green
hi Function ctermfg=cyan
hi Operator ctermfg=red
hi Ignore ctermfg=black
hi Error ctermbg=red ctermfg=white
hi Todo cterm=bold ctermbg=white ctermfg=red

" Common groups that link to default highlighting.
" You can specify other highlighting easily.
hi link String Constant
hi link Character Constant
hi link Number Constant
hi link Boolean Constant
hi link Float Number
hi link Conditional Statement
hi link Repeat Statement
hi link Label Statement
hi link Keyword Statement
hi link Exception Statement
hi link Include PreProc
hi link Define PreProc
hi link Macro PreProc
hi link PreCondit PreProc
hi link StorageClass Type
hi link Structure Type
hi link Typedef Type
hi link Tag Special
hi link SpecialChar Special
hi link Delimiter Special
hi link SpecialComment Special
hi link Debug Special

