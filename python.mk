.DEFAULT_GOAL := test
PYTHONFILES := $(wildcard **/*.py)

# Installs dependencies
install:
	@pipenv install
.PHONY: install

# Installs development dependencies
install-dev:
	@pipenv install --dev
.PHONY: install-dev

# Runs pytest
test:
	@pytest -q
.PHONY: test

# Watches files in the directory and runs `make test` on changes
# requires `entr` and `rg`
watch:
	@rg --files | entr make test
.PHONY: watch

# Lints python code with mypy
lint:
	mypy $(PYTHONFILES)
.PHONY: lint

# Formats python code with black
fmt:
	black $(PYTHONFILES)
.PHONY: fmt
