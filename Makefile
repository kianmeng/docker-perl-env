SUBDIRS := $(wildcard */.)
DOCKERPS := $(shell docker ps -a -q)

.PHONY: all clean create $(SUBDIRS)

all: $(SUBDIRS)

$(SUBDIRS):
	docker pull perl:latest
	$(MAKE) -C $@ clean build

clean:
ifdef DOCKERPS
	docker stop $(DOCKERPS)
	docker rm $(DOCKERPS)
endif

create:
	$(eval MODULE := $(filter-out $@,$(MAKECMDGOALS)))
	$(eval MODULE_NAME := $(shell echo $(MODULE) | sed 's/::/-/g'))
	cp -rv template $(MODULE_NAME)
	sed -i 's/#MODULE#/$(MODULE)/g' $(MODULE_NAME)/Dockerfile
	sed -i 's/#MODULE#/$(MODULE)/g' $(MODULE_NAME)/README.md
	sed -i 's/#MODULE_NAME#/$(MODULE_NAME)/g' $(MODULE_NAME)/Makefile
