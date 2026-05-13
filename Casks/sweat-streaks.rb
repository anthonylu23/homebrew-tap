cask "sweat-streaks" do
  version "0.1.1"
  sha256 "a27eb88d2e7c7e57270b7b3c81f75c86cd57de1d2b90e31dbe69bf741d42d566"

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
