(lang dune 3.14)

(name serde_csv)

(generate_opam_files true)

(source
 (github serde-ml/csv))

(authors "Leandro Ostera <leandro@abstractmachines.dev>")

(maintainers "Leandro Ostera <leandro@abstractmachines.dev>")

(license MIT)

(package
 (name serde_csv)
 (synopsis "CSV support for Serde")
 (depends
  dune
  (ocaml
   (>= "5.1.1"))
  (serde
   (= :version))
  ;; Testing
  (serde_derive
   (and
    :with-test
    (= :version)))
  (spices :with-test)
  (qcheck :with-test))
 (tags
  (serde serialize deserialize toml)))
