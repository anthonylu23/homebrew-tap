cask "sweat-streaks" do
  version "0.1.0"
  sha256 "1c34d8fd7d4cd0cf5092f60d5775266bab552571dbe1bead3665888d8cb7b2ec"

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
