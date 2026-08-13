# Homebrew Tap for CoffeeBar

Official Homebrew tap for [CoffeeBar](https://github.com/carlosfachini/coffeebar), a native macOS menu bar app that keeps your Mac awake while AI agents and other long-running tasks finish.

## Install

```bash
brew install --cask carlosfachini/tap/coffeebar
```

CoffeeBar is installed in `/Applications`. The installation does not open the app automatically.

## Upgrade

```bash
brew update
brew upgrade --cask carlosfachini/tap/coffeebar
```

## Uninstall

```bash
brew uninstall --cask carlosfachini/tap/coffeebar
```

CoffeeBar is open source and ad-hoc signed, but not notarized. If macOS blocks the first launch, open **System Settings > Privacy & Security** and choose **Open Anyway**.

The Cask is updated automatically from the latest public CoffeeBar Release.
