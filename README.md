# Setup

Install system dependencies

MacOS:
```sh
$ brew install love
```

If you don't already have [asdf]():
```sh
$ brew install asdf
```

Linux/Windows: ...

Install a version of Lua compatible with Teal (currently `<5.5`) using `asdf`
Note: this also install `luarocks` automatically
```sh
$ asdf install
```

Install `cyan` via `luarocks`
```sh
$ luarocks install --only-deps *.rockspec --tree lua_modules
```

Install VsCode plugin for Teal

Update settings to point to the correct path for `tl`:
```json
{
    "teal.compilerPath": "./lua_modules/bin/tl"
}
```

Download type declarations (and place in repository root):

- [love.d.tl](https://github.com/MikuAuahDark/love2d-tl/blob/d7567cf407a705740884b0c9826e2be0cd9fa679/love.d.tl)


# Running

```sh
$ ./lua_modules/bin/cyan build && love ./build/
```
