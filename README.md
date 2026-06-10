# atensecurity/homebrew-tap

Official Homebrew tap for Thoth CLI distribution on macOS.

## Install

```bash
brew tap atensecurity/tap
brew install thoth
```

`brew tap atensecurity/tap` resolves to the GitHub repository
`atensecurity/homebrew-tap`.

## What Gets Installed

- `thoth`
- `thothctl`

## Upgrade

```bash
brew update
brew upgrade thoth
```

## Source of Releases

The Homebrew formula points to signed release assets from:

- `https://github.com/atensecurity/thoth/releases`

Formula versions and checksums are updated by release automation via:

- `.github/workflows/thoth-homebrew-tap-sync.yml`

The formula template in this repo is:

- `platform/public/homebrew-tap/Formula/thoth.rb.tmpl`
