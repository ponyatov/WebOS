# var
MODULE = $(notdir $(CURDIR))
module = $(shell echo $(MODULE) | tr A-Z a-z)
OS     = $(shell uname -o|tr / _)
NOW    = $(shell date +%d%m%y)
REL    = $(shell git rev-parse --short=4 HEAD)
BRANCH = $(shell git rev-parse --abbrev-ref HEAD)

# dir
CAR    = $(HOME)/.cargo/bin

# tool
CURL   = curl -L -o
CARGO  = $(CAR)/cargo
RUSTUP = $(CAR)/rustup

# src
F += $(shell find lib -regex '.+.s$$')
R += $(shell find src -regex '.+.rs$$')
S += $(F) $(R)

# all
.PHONY: all
all:
	$(CARGO) run -- $(F)

# format
.PHONY: format format_rs
format: format_rs
format_rs: $(R)
	$(CARGO) fmt

# doc
.PHONY: doc
doc: \
	doc/rustbook_ru.pdf
	rsync -rv ~/mdoc/$(MODULE)/* doc/$(MODULE)/ && git add doc

doc/rustbook_ru.pdf:
	$(CURL) $@ https://raw.githubusercontent.com/kgv/rust_book_ru/gh-pages/converted/rustbook.pdf

# install
install: doc $(RUSTUP) $(CARGO)
	$(MAKE)   update
update: doc $(RUSTUP) $(CARGO)
	sudo apt  update
	sudo apt  install -yu `cat apt.txt`
	$(RUSTUP) update
	$(CARGO)  update

$(RUSTUP) $(CARGO):
	curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

# merge
MERGE  = Makefile README.md .clang-format .doxygen $(S)
MERGE += apt.txt Cargo.toml Cargo.lock
MERGE += .vscode bin doc lib inc src tmp

dev:
	git push -v
	git checkout $@
	git pull -v
	git checkout shadow -- $(MERGE)

shadow:
	git push -v
	git checkout $@
	git pull -v

release:
	git tag $(NOW)-$(REL)
	git push -v --tags
	$(MAKE) shadow

ZIP = tmp/$(MODULE)_$(NOW)_$(REL)_$(BRANCH).zip
zip:
	git archive --format zip --output $(ZIP) HEAD
