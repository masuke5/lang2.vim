if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

syn keyword lang2Keyword let
syn keyword lang2Keyword fn
syn keyword lang2Keyword return
syn keyword lang2Keyword if
syn keyword lang2Keyword else
syn keyword lang2Keyword while
syn keyword lang2Keyword true
syn keyword lang2Keyword false
syn keyword lang2Keyword mut
syn keyword lang2Keyword enum
syn keyword lang2Keyword struct
syn keyword lang2Keyword type
syn keyword lang2Keyword new
syn keyword lang2Keyword import
syn keyword lang2Keyword impl

syn keyword lang2Null __null__

syn keyword lang2Type int
syn keyword lang2Type bool
syn keyword lang2Type string

syn match lang2DecNumber display "\<\d\d*"
syn match lang2OctNumber display "\<0\o\o*"
syn match lang2HexNumber display "\<0x\x\x*"
syn match lang2BinNumber display "\<0b[0-1][0-1]*"

syn match lang2Operator display "\%(+\|-\|/\|*\|\^\|&\||\|>\|<\|%\)=\?"
syn match lang2Operator display "&&\|||\|:=\|=\|<>"

syn region lang2CommentSingleLine display start="#" end="$"
syn region lang2CommentMultiLine start="##" end="##"

syn match lang2EscapeError display contained /\\./
syn match lang2Escape display contained /\\\([nrt\\"0]\|x\x\{2}\)/
syn region lang2String start=+"+ end=+"+ contains=lang2Escape,lang2EscapeError


hi def link lang2DecNumber lang2Number
hi def link lang2OctNumber lang2Number
hi def link lang2HexNumber lang2Number
hi def link lang2BinNumber lang2Number

hi def link lang2Number Number
hi def link lang2Escape Sperial
hi def link lang2Escape Error
hi def link lang2String String
hi def link lang2Keyword Keyword
hi def link lang2Type Type
hi def link lang2Operator Operator
hi def link lang2CommentSingleLine Comment
hi def link lang2CommentMultiLine Comment
hi def link lang2Null Constant

let b:current_syntax = "lang2"
