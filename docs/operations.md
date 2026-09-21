# laya-mlx operations

The formula installs code and dependencies only. The first inference downloads
the selected Hugging Face checkpoint into the invoking user's cache; later
inference can reuse that cache offline.

Before adding the formula to a production host, record the Homebrew prefix and
installing account, available disk and memory, existing Laya caches, and any
existing Laya-related LaunchAgent. This formula does not create, remove, or
reconfigure a LaunchAgent.

Use the formula's `laya-mlx` command as the supported integration boundary. Do
not rely on a system Python import of `laya_mlx`.

The release verification record must identify the formula commit, upstream
package checksum, checkpoint revision and manifest, cache state, and whether
the check was cold or warm. A cache checksum mismatch must be quarantined and
downloaded again before inference is accepted.
