" Parole chiave principali
syntax keyword amplKeyword param var maximize minimize solve display let check printf reset option model data include

" Parole chiave speciali 's.t.' e 'subject to'
syntax match amplKeyword /\<s\.t\.\>/
syntax match amplKeyword /\<subject to\>/

" Tipi
syntax keyword amplType set integer binary

" Commenti
syntax match amplComment "--.*"

" Stringhe (corretto)
syntax region amplString start='"' skip='\\."' end='"'

" Numeri (interi e decimali)
syntax match amplNumber "\v\d+(\.\d+)?"

" Operatori
syntax match amplOperator /\v(<=|>=|!=|\*|\/|\+|\-)/

" Assegnazioni
syntax match amplAssignment "[:]?="

" Collegamenti evidenziazione
highlight link amplKeyword Keyword
highlight link amplType Type
highlight link amplComment Comment
highlight link amplString String
highlight link amplNumber Number
highlight link amplOperator Operator
highlight link amplAssignment Identifier
