IMAGE_NAME := nfl-db-update

build:
	@docker build -t ${IMAGE_NAME} .

run:
	$(MAKE) build
	@docker run ${IMAGE_NAME}