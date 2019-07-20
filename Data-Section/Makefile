MODULE := Data-Section
DOCKERPS := $(shell docker images | grep $(MODULE) | tr -s ' ' | cut -d ' ' -f3)

.PHONY: build run clean

build:
	docker build -t $(USER):$(MODULE) .
	docker images | grep $(MODULE)

run:
	docker run -it -v $(PWD):/export $(USER):$(MODULE) bash

clean:
ifdef DOCKERPS
	docker rmi --force $(DOCKERPS)
endif
