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
