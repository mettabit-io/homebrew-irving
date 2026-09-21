# laya-mlx operations

`laya-mlx` provides a generic local System 1 HTTP service as well as the
underlying CLI. It does not install model weights. Place a compatible local
checkpoint at `$(brew --prefix)/var/laya-mlx/model`, then start the managed
service:

```sh
brew services start laya-mlx
curl -s http://127.0.0.1:12997/health
```

The service accepts generic typed decisions at `POST /v1/systemone`; `/predict`
is a compatibility alias. It does not include Irving-specific topic-change or
grounding endpoints.

The service binds to loopback only. Docker workloads on the same Mac must use
`http://host.docker.internal:12997`; do not expose this unauthenticated service
through Tailscale or the public internet. Inspect it with `brew services list`
and `tail -f "$(brew --prefix)/var/log/laya-mlx.log"`.

To stop it, run `brew services stop laya-mlx`. The checkpoint directory is not
removed by `brew uninstall laya-mlx`; remove or replace it deliberately when
rolling back or changing models.
