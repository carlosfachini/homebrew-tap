# typed: strict
# frozen_string_literal: true

cask "coffeebar" do
  version "0.1.0"
  sha256 "9b79108fe99cf211cca63691d426d56874231071f32c9b424de1819a6867e232"

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
