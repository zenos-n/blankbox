# Contributing to Blankbox

Report bugs and discuss features at <https://github.com/zenos-n/blankbox/issues>.
Please include the application version, GTK/VTE versions and reproduction steps.
The About dialog provides environment information.

Use `nix develop` for the build tools, then follow [FORK.md](FORK.md#build-and-checks)
to build and run the Meson tests. Use the existing Vala style, preserve keyboard
navigation and accessibility, and add regression coverage for behavior changes.

Translations live in `po/`. The inherited translations and upstream authorship
remain credited to Black Box; Blankbox contributions are handled in this repository.
