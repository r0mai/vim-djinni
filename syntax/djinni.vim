if exists("b:current_syntax")
  finish
endif

let b:current_syntax = "djinni"

syn keyword djinniTodo contained TODO FIXME XXX NOTE
syn match djinniComment "#.*$" contains=djinniTodo

syn keyword djinniPrimitiveType bool
syn keyword djinniPrimitiveType i8
syn keyword djinniPrimitiveType i16
syn keyword djinniPrimitiveType i32
syn keyword djinniPrimitiveType i64
syn keyword djinniPrimitiveType f32
syn keyword djinniPrimitiveType f64
syn keyword djinniPrimitiveType string
syn keyword djinniPrimitiveType binary
syn keyword djinniPrimitiveType date

syn keyword djinniStructure enum
syn keyword djinniStructure record
syn keyword djinniStructure interface

hi def link djinniTodo Todo
hi def link djinniComment Comment
hi def link djinniPrimitiveType Type
hi def link djinniStructure Structure
