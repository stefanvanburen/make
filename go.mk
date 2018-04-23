.PHONY: all

# Run unit tests
test:
	@go test -v ./...
.PHONY: test

build:
	@go build .
.PHONY: build

# Check for style errors
lint:
	@golint ./...
.PHONY: lint

# Check for syntax errors
vet:
	@go vet ./...
.PHONY: vet

# Clean build artifacts and generated files
clean:
	@go clean ./...
.PHONY: clean

generate:
	@go generate ./...
.PHONY: generate

# Runs gometalinter on your packages
# Needs the PKGS variable to be defined
metalint:
	gometalinter --vendor --disable-all \
		--enable=deadcode \
		--enable=ineffassign \
		--enable=gosimple \
		--enable=staticcheck \
		--enable=gofmt \
		--enable=goimports \
		--enable=dupl \
		--enable=misspell \
		--enable=errcheck \
		--enable=vet \
		--enable=vetshadow \
		--deadline=1m \
		$(PKGS)
.PHONY: metalint
