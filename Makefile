all: build test sample

build: setup
	pyflakes buildme
	flake8 --ignore E203,E266,E402,E731,W503 buildme || true
	black --line-length 79 --no-color buildme

sample:
	./buildme --annotate --debug ./doc/sample.md
	./buildme --export --debug ./doc/sample.md

setup:

test:
	./buildme --self-test

.SILENT:
