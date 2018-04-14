.DEFAULT_GOAL := lint
PYTHONFILES := $(wildcard **/*.py)

# Installs dependencies
install:
	@pipenv install
.PHONY: install

# Installs development dependencies
install-dev:
	@pipenv install --dev
.PHONY: install-dev

# Runs unittests
test:
	@pipenv run python -m unittest
.PHONY: test

# Lints python code with mypy
lint:
	mypy -s $(PYTHONFILES)
.PHONY: lint

# Formats python code with black
fmt:
	black $(PYTHONFILES)
.PHONY: fmt
