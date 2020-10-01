export

CARAMELC = $(PWD)/caramelc.exe
CARAMELC_STDLIB_PATH ?= $(PWD)/_build/default/src/stdlib

.PHONY: build
build:
	dune build @all -j8

.PHONY: watch
watch:
	dune build @all --watch -j8

.PHONY: install
install:
	dune install

.PHONY: deps
deps:
	opam install dune menhir ocaml-compiler-libs cmdliner ppx_sexp_conv sexplib ocamlformat

.PHONY: test
test:
	dune runtest

release:
	tar czf release.tar.gz \
		-C _build/default/src/ \
		caramelc.exe \
		stdlib

.PHONY: promote
promote:
	dune promote

.PHONY: fmt
fmt:
	dune build @fmt --auto-promote

.PHONY: clean
clean:
	dune clean
