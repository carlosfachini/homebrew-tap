# typed: strict
# frozen_string_literal: true

cask "coffeebar" do
  version "0.2.1"
  sha256 "509653f41f4426e3538086a941e3fe0545b02c38b578d5e8c2f99e6b188cd630"

  url "https://github.com/carlosfachini/coffeebar/releases/download/v#{version}/CoffeeBar-macos-universal-#{version}.zip"
  name "CoffeeBar"
  desc "Prevent idle system sleep while AI agents and long-running tasks finish"
  homepage "https://github.com/carlosfachini/coffeebar"

  depends_on macos: :sonoma

  app "CoffeeBar.app"

  zap trash: [
    "~/Library/Caches/com.carlosfachini.CoffeeBar",
    "~/Library/HTTPStorages/com.carlosfachini.CoffeeBar",
    "~/Library/Preferences/com.carlosfachini.CoffeeBar.plist",
    "~/Library/Saved Application State/com.carlosfachini.CoffeeBar.savedState",
  ]

  caveats <<~EOS
    CoffeeBar is open source but is not notarized because the project does not
    use a paid Apple Developer account. On first launch, macOS may block it.

    Try opening CoffeeBar once, then go to:
      System Settings > Privacy & Security > Open Anyway
  EOS
end
