.DEFAULT_GOAL := test

# fmt formats rust code based on the nightly rustfmt
# https://crates.io/crates/rustfmt-nightly
fmt:
	@cargo +nightly fmt
.PHONY: fmt

# test runs all the tests
test:
	@cargo test
.PHONY: test
