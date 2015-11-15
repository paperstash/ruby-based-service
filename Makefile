NAME=paperstash/ruby-based-service
VERSION=$(shell cat VERSION)

.PHONY: image tag push

image:
	docker build -t $(NAME):$(VERSION) .

tag: image
	docker tag -f $(NAME):$(VERSION) $(NAME):latest
	git tag $(VERSION)

push: image tag
	docker push $(NAME)
