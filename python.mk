install:
	@pipenv install

install-dev:
	@pipenv install --dev

test:
	@pipenv run python -m unittest
