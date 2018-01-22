.PHONY: default
default:
	@echo please use a specific target



.PHONY: test
test:
	vendor/bin/phpunit

.PHONY: test-watch
test-watch: check-fswatch
	-vendor/bin/phpunit
	@echo
	fswatch --latency=0.01 --one-per-batch tests src | while read event; do vendor/bin/phpunit; echo; done



.PHONY: check-fswatch
check-fswatch:
	@command -v fswatch >/dev/null 2>&1 || { echo >&2 "I require fswatch but it's not installed. Aborting."; exit 1; }
