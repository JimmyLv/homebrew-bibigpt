# homebrew-bibigpt

Homebrew Tap for BibiGPT - AI Video/Audio Summary Assistant

## Installation (Recommended)

```bash
brew tap jimmylv/bibigpt
brew install --cask bibigpt
```

This installs BibiGPT.app to `/Applications` and creates the `bibi` CLI command.

## Alternative: Formula Installation

```bash
brew tap jimmylv/bibigpt
brew install bibigpt
```

> Note: The formula installs to Homebrew's Cellar, not `/Applications`. Use the cask for standard macOS app installation.

## Usage

```bash
bibi https://www.youtube.com/watch?v=xxxxx
bibi --url https://www.bilibili.com/video/BVxxxxx
bibi --file /path/to/video.mp4
```

## Updating

```bash
brew upgrade --cask bibigpt
```
