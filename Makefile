all:
	@if [ "x$(JHBUILD_PREFIX)" = x ]; then \
		echo "JHBUILD_PREFIX must be set."; \
		exit 1; \
	fi

clean:
	@echo "Nothing to clean."

install:
	./install.sh
