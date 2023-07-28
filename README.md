# nfnl-plugin-example

A very simple plugin to demonstrate writing [Neovim][Neovim] plugins in
[Fennel][Fennel] with [nfnl][nfnl].

The plugin only exposes one Lua module (`nfnl-plugin-example`) which exports one
function (`setup`). When loaded and executed it'll use the notify API to display
"Hello, World!" which means you'll either see it in your `:messages` area or in
a floating notification if you have a plugin for that.

We're embedding a copy of nfnl in this plugin to show you how that can be
achieved. Here's a list of files you'll probably find interesting and worth
looking at:

- `script/nfnl` is responsible for cloning, updating and embedding nfnl into
  `lua/nfnl-plugin-example/nfnl`.
- `.gitattributes` tells GitHub which files are vendored from other repos and
  which are compiler output. This ensures your language report for your
  repository is accurate and correctly ignores files you didn't write.
- `.ignore` ensures compiler output Lua files don't show up in command line and
  Neovim search interfaces.
- `.nfnl.fnl` enables and configures nfnl for this directory, it's just relying
  on the defaults so it only contains `{}`.
- `fnl/nfnl-plugin-example/init.fnl` is the only code for this plugin and it's
  the main entry point.
- `script/test` executes the tests under `fnl/spec` with [Plenary][Plenary] (you
  will need to install that separately for this to work).
- `.github/workflows/test.yaml` creates a GitHub workflow that automatically
  runs your test suite on push.

If you add this plugin to your plugin manager you can load it with:

```lua
:lua require("nfnl-plugin-example").setup()
```

Bear in mind, some plugin managers actually call this `setup` method for you
with a configuration table.

## Usage

Feel free to fork / copy / steal / borrow / modify / mutate / scramble / fry /
reticulate splines / incorporate this repository in any way you see fit. It can
be an inspiration, reference or template. That's entirely up to you and what you
need right now.

If you build something with nfnl let me know and I'll link to it from here as
further examples of how to work with it.

Have fun!

## Unlicensed

Find the full [Unlicense][unlicense] in the `UNLICENSE` file, but here's a
snippet.

> This is free and unencumbered software released into the public domain.
>
> Anyone is free to copy, modify, publish, use, compile, sell, or distribute
> this software, either in source code form or as a compiled binary, for any
> purpose, commercial or non-commercial, and by any means.

[Neovim]: https://neovim.io/
[Fennel]: https://fennel-lang.org/
[nfnl]: https://github.com/Olical/nfnl
[unlicense]: http://unlicense.org/
[Plenary]: https://github.com/nvim-lua/plenary.nvim
