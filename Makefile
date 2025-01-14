check: lint test

lint:
	./node_modules/.bin/jshint index.js test

test:
	node --test $(EXTRA_TEST_OPTIONS)

test-coverage: export EXTRA_TEST_OPTIONS:=--experimental-test-coverage
test-coverage: test

.PHONY: check lint test test-coverage
