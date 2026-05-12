cask "sweat-streaks" do
  version "0.1.0"
  sha256 "2599c9112fe0ec5ccaa36c9e7eb0389b78b4ce7b0b910f480915c203929a8665"

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
