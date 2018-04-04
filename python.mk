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
