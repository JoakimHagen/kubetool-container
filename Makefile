clean:
	# Clean the repository
	rm -rf ./archives

download:
	./keyservers.sh
	./get-latest.sh

build:
	docker build -t test-dev-img-1 .