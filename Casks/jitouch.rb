cask "jitouch" do
  version "2.81"
  sha256 "b2205079633d96b5e7276fcbe9274ce50c17a806992731f45c560eca33ea2afd"

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
