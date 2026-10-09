# typed: strict
# frozen_string_literal: true

cask "coffeebar" do
  version "0.2.0"
  sha256 "c7eae1d881dd6f02e28fb396b1c67906d9a30d8fc06cfb1680c784da2e58b4ca"

  url "https://github.com/carlosfachini/coffeebar/releases/download/v#{version}/CoffeeBar-macos-universal-#{version}.zip",
      verified: "github.com/carlosfachini/coffeebar/"
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
