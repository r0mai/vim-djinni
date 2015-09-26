if exists("b:current_syntax")
  finish
endif

let b:current_syntax = "djinni"

syn keyword djinniTodo contained TODO FIXME XXX NOTE
syn match djinniComment "#.*$" contains=djinniTodo

hi def link djinniComment Comment
