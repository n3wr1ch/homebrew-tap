cask "lidlux" do
  version "0.1.0"
  sha256 "c02e4011063ae5b715130f7679a6209f53f38599b613eeba71aaf0b8d0ddd364"

  url "https://github.com/n3wr1ch/lidlux/releases/download/v#{version}/LidLux-#{version}.zip"
  name "LidLux"
  desc "Ambient light-based brightness control for MacBook and external monitors"
  homepage "https://github.com/n3wr1ch/lidlux"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :ventura

  app "LidLux.app"

  uninstall quit: "com.ntoktok.lidlux"

  zap trash: "~/Library/Preferences/com.ntoktok.lidlux.plist"

  caveats <<~EOS
    LidLux is ad-hoc signed and not notarized. If macOS blocks the first launch,
    open System Settings > Privacy & Security and click "Open Anyway".

    To use the brightness keys for external monitors, allow LidLux in
    System Settings > Privacy & Security > Accessibility.
    After upgrading, you may need to remove and re-add LidLux there.
  EOS
end
