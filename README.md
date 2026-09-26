# n3wr1ch/homebrew-tap

Homebrew casks for [n3wr1ch](https://github.com/n3wr1ch)'s apps.

## LidLux

Ambient light–based brightness control for MacBook built-in and external (DDC/CI) monitors. See [n3wr1ch/lidlux](https://github.com/n3wr1ch/lidlux).

```sh
brew install --cask n3wr1ch/tap/lidlux
```

Upgrade with `brew upgrade --cask lidlux`.

## Automatic updates

[`update-lidlux.yml`](.github/workflows/update-lidlux.yml) checks the latest [LidLux release](https://github.com/n3wr1ch/lidlux/releases) every hour. When a new version appears, it verifies the release checksum, updates `Casks/lidlux.rb`, validates it with `brew style` and `brew audit`, and commits the change. Run it immediately with:

```sh
gh workflow run update-lidlux.yml -R n3wr1ch/homebrew-tap
```
