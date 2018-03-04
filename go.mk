# Run unit tests
test:
	@go test -v ./...

build:
	@go build .

# Check for style errors
lint:
	@golint .

# Check for syntax errors
vet:
	@go vet .

# Clean build artifacts and generated files
clean:
	@go clean ./...
