SUBDIRS:= $(wildcard */.)
DOCKERPS:= $(shell docker ps -a -q)

.PHONY: all clean $(SUBDIRS)

all: $(SUBDIRS)

$(SUBDIRS):
	docker pull perl:latest
	$(MAKE) -C $@ clean build

clean:
ifdef DOCKERPS
	docker stop $(DOCKERPS)
	docker rm $(DOCKERPS)
endif
