.PHONY: install
install:
	@pipenv install

.PHONY: install-dev
install-dev:
	@pipenv install --dev

.PHONY: test
test:
	@pipenv run python -m unittest
