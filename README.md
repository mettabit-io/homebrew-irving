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
installs an isolated Python runtime, exposes the `laya-mlx` command, and
provides a `brew services`-managed local System 1 daemon. It does not install
model weights.

After placing a compatible checkpoint at `$(brew --prefix)/var/laya-mlx/model`:

```sh
brew services start laya-mlx
curl -s http://127.0.0.1:12997/health
```

The daemon is local-only. Docker workloads on the same Mac connect through
`http://host.docker.internal:12997`.

See [operations documentation](docs/operations.md) for verification, upgrade,
rollback, and model-cache handling.
