add-highlighter global/ show-matching
add-highlighter global/ regex \h+$ 0:Error

map global normal '#' ":comment-line<ret>"

map global normal , "<space>"
map global normal <space> ","

map -docstring "paste the clipboard" global user p "<a-!>xsel<ret>"
map -docstring "yank selection to clipboard" global user y "<a-|> xsel -i<ret>"
map -docstring "repl" global user r ":repl<ret>"
map -docstring "send text" global user s ":send-text<ret>"

# plugins
enable-auto-pairs
set-option global auto_pairs ( ) { } [ ] '"' '"' "'" "'" ` ` “ ” ‘ ’ « » ‹ ›
map global normal "'" ': enter-user-mode -lock mirror<ret>'
# kak-tree
map -docstring "select previous node" global user h ":tree-select-previous-node<ret>"
map -docstring "select first child" global user j ":tree-select-first-child<ret>"
map -docstring "select parent node" global user k ":tree-select-parent-node<ret>"
map -docstring "select next node" global user l ":tree-select-next-node<ret>"
# kak-lsp ...
