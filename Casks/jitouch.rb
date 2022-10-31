cask "jitouch" do
  version "2.82.0"
  sha256 "c5fae23a0a9b8d658ae8be6d45f08d59741b518830c65c6bcc5ad04f000ce6bd"

  url "https://github.com/aaronkollasch/jitouch/releases/download/v#{version}/Install-Jitouch.pkg"
  name "jitouch"
  desc "Multi-touch gestures editor"
  homepage "https://github.com/aaronkollasch/jitouch"

  pkg "Install-Jitouch.pkg"

  uninstall pkgutil:   "com.jitouch.Jitouch.*",
            launchctl: "com.jitouch.Jitouch.agent"

  zap trash: [
    "~/Library/Preferences/com.jitouch.Jitouch.plist",
    "~/Library/LaunchAgents/com.jitouch.Jitouch.plist",
    "~/Library/Logs/com.jitouch.Jitouch.log",
    "~/Library/Logs/com.jitouch.Jitouch.prefpane.log",
  ]
end
