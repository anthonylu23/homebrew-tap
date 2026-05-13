cask "sweat-streaks" do
  version "0.1.3"
  sha256 "938f971883a5918bd762ac337dcfdf719c5418b3480cd1422ab8b10d84a25946"

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
