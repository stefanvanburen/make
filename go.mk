# Run unit tests
.PHONY: test
test:
	@go test -v ./...

.PHONY: build
build:
	@go build .

# Check for style errors
.PHONY: lint
lint:
	@golint .

# Check for syntax errors
.PHONY: vet
vet:
	@go vet .

# Clean build artifacts and generated files
.PHONY: clean
clean:
	@go clean ./...
