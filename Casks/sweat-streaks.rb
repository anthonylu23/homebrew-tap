cask "sweat-streaks" do
  version "0.1.4"
  sha256 "5f7b3648e6b5f8902874aa7991ca35c16e7728e19811bacec6648b608f83fd7f"

  url "https://github.com/anthonylu23/sweat-streaks/releases/download/v#{version}/Sweat-Streaks-v#{version}-macos-arm64.zip"
  name "Sweat Streaks"
  desc "Local-first macOS menu bar app for tracking activity streaks"
  homepage "https://github.com/anthonylu23/sweat-streaks"

  depends_on macos: ">= :ventura"

  app "Sweat Streaks.app"

  zap trash: [
    "~/Library/Application Support/SweatStreaks",
    "~/Library/Preferences/com.anthonylu23.SweatStreaks.plist",
  ]
end
