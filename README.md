# Irving Homebrew Tap

Custom Homebrew formulae for Irving. This tap is public, but it is not submitted
to Homebrew/core.

## Install laya-mlx

```sh
brew tap mettabit-io/irving
brew install laya-mlx
```

For a one-command installation without first tapping the repository, use the
fully qualified formula name:

```sh
brew install mettabit-io/irving/laya-mlx
```

`laya-mlx` supports Apple Silicon Macs running macOS Sonoma or later. It
installs an isolated Python runtime and exposes the `laya-mlx` command; it does
not install a daemon, LaunchAgent, or model weights.

See [operations documentation](docs/operations.md) for verification, upgrade,
rollback, and model-cache handling.
