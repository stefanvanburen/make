include github.com/svanburen/make/python

# creates a wheel of the current package
wheel:
	python setup.py bdist_wheel
.PHONY: wheel
