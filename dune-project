(lang dune 3.11)

(name raijin)

(using menhir 2.1)

(generate_opam_files true)

(source
 (github lviana15/compiler))

(authors "Lucas Viana")

(maintainers "Lucas Viana")

(license LICENSE)

(documentation https://url/to/documentation)

(package
 (name raijin)
 (synopsis "Compiler")
 (description "A compiler based on the Modern Compiler Implementation in ML book")
 (depends ocaml dune)
 (tags
  (topics "to describe" your project)))

; See the complete stanza docs at https://dune.readthedocs.io/en/stable/dune-files.html#dune-project
