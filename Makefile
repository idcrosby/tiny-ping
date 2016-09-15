NAME = idcrosby/tinyping
INSTANCE = tinyping

.PHONY: default build copy

default: build

build:
	docker build -t $(NAME)-dev -f Dockerfile-dev .

copy:
	docker create --name $(INSTANCE) $(NAME)-dev
	docker cp $(INSTANCE):/app/main $(shell pwd)/app
	docker rm $(INSTANCE)

release:
	docker build -t $(NAME) .

run:
	docker run --rm -p 8080:80 --name $(INSTANCE) $(NAME)