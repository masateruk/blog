SUDIRS = src test

all:
	@for d in $(SUDIRS); do \
		$(MAKE) -C $$d all; \
	done

clean:
	@for d in $(SUDIRS); do \
		$(MAKE) -C $$d clean; \
	done
