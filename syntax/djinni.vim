if exists("b:current_syntax")
  finish
endif

let b:current_syntax = "djinni"

syn keyword djinniTodo contained TODO FIXME XXX NOTE
syn match djinniComment "#.*$" contains=djinniTodo

syn keyword djinniPrimitiveType i8 i16 i32 i64 f32 f64
syn keyword djinniPrimitiveType bool string binary date

syn keyword djinniCompositeType list set map optional

syn keyword djinniStructure enum record interface

syn keyword djinniQualifier static const

syn match djinniExt "+j"
syn match djinniExt "+c"
syn match djinniExt "+o"
syn match djinniExt "+p"

syn region djinniImported display contained start=+"+ end=+"+
syn match djinniImport display "^\s*@\s*import\s*\"" contains=djinniImported
syn region djinniExterned display contained start=+"+ end=+"+
syn match djinniExtern display "^\s*@\s*extern\s*\"" contains=djinniExterned

hi def link djinniTodo          Todo
hi def link djinniComment       Comment
hi def link djinniPrimitiveType Type
hi def link djinniCompositeType Type
hi def link djinniStructure     Structure
hi def link djinniQualifier     StorageClass
hi def link djinniMacro         Macro
hi def link djinniImported      String
hi def link djinniImport        Include
hi def link djinniExterned      String
hi def link djinniExtern        Include
hi def link djinniExt           Constant
