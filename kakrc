add-highlighter global/ show-matching
add-highlighter global/ regex \h+$ 0:Error

map global normal '#' ":comment-line<ret>"

map global normal <a-J> "<a-j>"
map global normal <a-9> "<a-(>"
map global normal <a-0> "<a-)>"

map global insert '(' '()<left>'
map global insert '{' '{}<left>'
map global insert '[' '[]<left>'

map -docstring "paste the clipboard" global user p "<a-!>xsel<ret>"
map -docstring "yank selection to clipboard" global user y "<a-|> xsel -i<ret>"
map -docstring "repl" global user r ":repl<ret>"
map -docstring "send text" global user s ":send-text<ret>"
map -docstring "Wrap to 80 columns" global user f '|fmt -w80<ret>'

# plugins
map global normal "'" ': enter-user-mode -lock mirror<ret>'
map -docstring "select previous node" global normal <backspace> ":tree-select-previous-node<ret>" # <c-h>
map -docstring "select first child" global normal <ret> ":tree-select-first-child<ret>" # <c-j>
map -docstring "select parent node" global normal <c-k> ":tree-select-parent-node<ret>"
map -docstring "select next node" global normal <c-l> ":tree-select-next-node<ret>"
# kak-lsp ...
eval %sh{kak-lsp --kakoune -s $kak_session}
lsp-enable
lsp-diagnostic-lines-disable global
map global user l %{: enter-user-mode lsp<ret>} -docstring "LSP mode"
map -docstring "lsp-jump" global lsp <ret> ":lsp-jump<ret>"
