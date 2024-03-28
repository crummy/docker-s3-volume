NAME = crummy/s3-volume

.PHONY: build release

build:
	docker build --platform linux/amd64 -t $(NAME):latest .

release:
	docker push $(NAME):latest
