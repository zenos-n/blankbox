# Blankbox

A native GNOME terminal based on [Black Box](https://gitlab.gnome.org/raggesilver/blackbox),
maintained for GNOME 50 with GTK 4, libadwaita and VTE GPU rendering.

## Run with Nix

```sh
nix run github:zenos-n/blankbox
```

From a checkout:

```sh
nix build
nix run
nix develop
nix flake check
```

The executable and named flake package are `blankbox`. The flake supports
x86_64 and AArch64 Linux. Build dependencies require GTK 4.22, libadwaita 1.9
and VTE 0.84. See [FORK.md](FORK.md#build-and-checks) for Meson instructions.

## Features

- Native tabs and tab overview, including floating controls in headerless mode.
- Desktop accent integration, configurable terminal colors, fonts and padding.
- Animated cursor trail, with a white cursor by default and optional accent color.
- Positional or most recently used tab switching; hold Ctrl to cycle a fixed history.
- Search, configurable shortcuts, process completion notifications and optional Sixel.

Kitty graphics and full Kitty compatibility remain future work. GPU throughput
and input latency have not been benchmarked; [PERFORMANCE.md](PERFORMANCE.md)
records the checks and limitations.

Preferences and user data from Black Box Next are preserved. Its executable and
desktop-entry aliases keep existing launchers working; new integrations should
use `blankbox` and `com.neg-zero.Blankbox.desktop`.

[Report an issue](https://github.com/zenos-n/blankbox/issues) or read
[CONTRIBUTING.md](CONTRIBUTING.md). Blankbox is GPL-3.0-or-later; upstream
copyrights, translations and release history are retained. See [COPYING](COPYING).
