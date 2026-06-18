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

Install VsCode plugin for Teal

Update settings to point to the correct path for `tl`:
```json
{
    "teal.compilerPath": "./lua_modules/bin/tl"
}
```

# Running

```sh
$ ./lua_modules/bin/cyan build && love ./build/
```
