# homebrew-bibigpt

Homebrew Tap for BibiGPT - AI Video/Audio Summary Assistant

## Installation

```bash
brew tap jimmylv/bibigpt
brew install bibigpt
```

## Usage

```bash
bibi https://www.youtube.com/watch?v=xxxxx
bibi --url https://www.bilibili.com/video/BVxxxxx
bibi --file /path/to/video.mp4
```

## Development

To update the formula with the latest version:
1. Check the latest release URL from https://bibigpt.co/download/desktop
2. Calculate SHA256: `shasum -a 256 /path/to/download.dmg`
3. Update the URL and sha256 in Formula/bibigpt.rb
