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

syn keyword djinniQualifier static
syn keyword djinniQualifier const

syn region djinniImported display contained start=+"+ end=+"+
syn match djinniImport display "^\s*@\s*import\s*\"" contains=djinniImported
syn region djinniExterned display contained start=+"+ end=+"+
syn match djinniExtern display "^\s*@\s*extern\s*\"" contains=djinniExterned

hi def link djinniTodo Todo
hi def link djinniComment Comment
hi def link djinniPrimitiveType Type
hi def link djinniStructure Structure
hi def link djinniQualifier StorageClass
hi def link djinniMacro Macro
hi def link djinniImported String
hi def link djinniImport Include
hi def link djinniExterned String
hi def link djinniExtern Include
