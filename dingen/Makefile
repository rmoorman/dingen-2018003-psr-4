PORT=8080
DOCKER_IMAGE_NAME=dingen2018003:php7-apache



.PHONY: default
default:
	@echo please use a specific target



.PHONY: dev-server
dev-server-docker:
	docker build -t $(DOCKER_IMAGE_NAME) .

dev-server: dev-server-docker
	docker run -it --rm -p $(PORT):80 -v "$$PWD":/dingen $(DOCKER_IMAGE_NAME)



.PHONY: test
test:
	cd dingen; make test

.PHONY: test-watch
test-watch:
	cd dingen; make test-watch
