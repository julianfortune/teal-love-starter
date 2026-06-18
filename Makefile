CYAN = ./lua_modules/bin/cyan
CERU = ./lua_modules/bin/ceru
ROCKSPEC = $(wildcard *.rockspec)
SENTINEL = .make

.PHONY: run build format clean

run: build/$(SENTINEL)
	love ./build/

build: build/$(SENTINEL)

build/$(SENTINEL): lua_modules/$(SENTINEL) love.d.tl $(shell find src -type f)
	$(CYAN) build
	touch build/$(SENTINEL)

lua_modules/$(SENTINEL): $(ROCKSPEC)
	luarocks install --only-deps $(ROCKSPEC) --tree lua_modules
	touch lua_modules/$(SENTINEL)

# Download the type declaration file for the `love` module
love.d.tl:
	curl -O https://raw.githubusercontent.com/MikuAuahDark/love2d-tl/d7567cf407a705740884b0c9826e2be0cd9fa679/love.d.tl

format:
	$(CERU) src/

clean:
	rm -rf build/
