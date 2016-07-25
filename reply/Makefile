MODULE:= reply
DOCKERPS:= $(shell docker images | grep $(MODULE) | tr -s ' ' | cut -d ' ' -f3)

.PHONY: build run clean

build:
	docker build -t $(USER):$(MODULE) .
	docker images | grep $(MODULE)

run:
	docker run -it -v $(PWD):/export $(USER):$(MODULE)

clean:
ifdef DOCKERPS
	docker rmi $(DOCKERPS)
endif
