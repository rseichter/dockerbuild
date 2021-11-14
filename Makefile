# vim:ts=8:sw=8:noet

REGISTRY	:= rseichter
TAG		:= latest

HERE		:= $(shell pwd -P)
IMAGE_PREFIX	:= $(REGISTRY)/dockerbuild
IMAGE		:= $(IMAGE_PREFIX):$(TAG)
LATEST		:= $(IMAGE_PREFIX):latest

.PHONY:	usage build

usage:
	@echo 2>&1 "Usage: make build"
	@exit 1

build:
	docker build -t $(IMAGE) -t $(LATEST) --no-cache .

push:
	docker push --all-tags $(IMAGE_PREFIX)
