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

syn keyword lang2Type int
syn keyword lang2Type bool
syn keyword lang2Type string

syn match lang2DecNumber display "\<[0-9][0-9]*"

syn match lang2Operator display "\%(+\|-\|/\|*\|=\|\^\|&\||\|!\|>\|<\|%\)=\?"
syn match lang2Operator display "&&\|||\|:="

syn region lang2CommentSingleLine display start="#" end="$"
syn region lang2CommentMultiLine start="##" end="##"

syn match lang2EscapeError display contained /\\./
syn match lang2Escape display contained /\\[nrt\\"0]/
syn region lang2String start=+"+ end=+"+ contains=lang2Escape,lang2EscapeError


hi def link lang2DecNumber lang2Number

hi def link lang2Number Number
hi def link lang2Escape Sperial
hi def link lang2Escape Error
hi def link lang2String String
hi def link lang2Keyword Keyword
hi def link lang2Type Type
hi def link lang2Operator Operator
hi def link lang2CommentSingleLine Comment
hi def link lang2CommentMultiLine Comment

let b:current_syntax = "lang2"
