# Teal & Löve2d Start Project

## Getting Started

### Install System dependencies

#### MacOS
```sh
$ brew install love
```

If you don't already have [`asdf`](https://asdf-vm.com):
```sh
$ brew install asdf
```

Make sure you have the Lua plugin:
```sh
$ asdf plugin add lua
```

### Install project dependencies

Install Lua using `asdf`:
```sh
$ asdf install
```

Notes:
- Teal is currentl only compatible with Lua `5.1.X` to `5.4.X`
- The `asdf` plugin also installs `luarocks` automatically


### VSCode Configuration

Install the [Teal plugin for VSCode](https://marketplace.visualstudio.com/items?itemName=pdesaulniers.vscode-teal).

Ensure your workspace settings point to the correct path for `tl`:
```json
{
    "teal.compilerPath": "./lua_modules/bin/tl"
}
```

### Run the Project

```sh
$ make
```
