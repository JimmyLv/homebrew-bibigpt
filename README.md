# homebrew-bibigpt

Homebrew Tap for [BibiGPT](https://bibigpt.co/) - AI Video/Audio Summary Assistant

## Installation

```bash
brew install --cask jimmylv/bibigpt/bibigpt
```

Or add the tap once, then use the short name:

```bash
brew tap jimmylv/bibigpt
brew install --cask bibigpt
```

This installs BibiGPT.app to `/Applications` and creates the `bibi` CLI command.
Apple Silicon and Intel Macs are both supported (Intel builds are released separately and may lag a few versions behind).

## Usage

```bash
bibi https://www.youtube.com/watch?v=xxxxx
bibi --url https://www.bilibili.com/video/BVxxxxx
bibi --file /path/to/video.mp4
```

## Updating

BibiGPT updates itself in the background. To update through Homebrew:

```bash
brew upgrade --cask bibigpt
```

## How this tap is updated

The cask is bumped automatically by BibiGPT's release workflow: the Apple Silicon block after each release, the Intel block after each Intel build.
