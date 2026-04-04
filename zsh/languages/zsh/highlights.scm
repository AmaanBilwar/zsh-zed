[
  (string)
  (raw_string)
  (ansi_c_string)
  (translated_string)
  (heredoc_body)
  (heredoc_start)
] @string

[
  (command_name)
] @function

(declaration_command) @keyword


(variable_name) @variable

[
  (simple_expansion)
] @variable

(
  (concatenation
    (simple_expansion) @variable)
)

(special_variable_name) @variable.special

(number) @number

[
  "case"
  "do"
  "done"
  "elif"
  "else"
  "esac"
  "export"
  "fi"
  "for"
  "function"
  "if"
  "in"
  "select"
  "then"
  "unset"
  "until"
  "while"
] @keyword

(comment) @comment

(function_definition name: (word) @function)

(file_descriptor) @number

[
  (command_substitution)
  (process_substitution)
  (expansion)
] @embedded

[
  "$"
  "&&"
  ">"
  ">>"
  "<"
  "|"
] @operator

(
  (flag) @operator
)

(
  (command (_) @operator)
  (#match? @operator "^-")
)

(
  (word) @string.special
  (#match? @string.special "^\\*\\.[A-Za-z0-9_]+\\([A-Za-z0-9_,-]+\\)$")
)

(
  (concatenation
    (string)
    (word) @string.special)
)
