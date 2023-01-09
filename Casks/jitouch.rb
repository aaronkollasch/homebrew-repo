cask "jitouch" do
  version "2.82.1"
  sha256 "3f5194a4da6fe19d17c843fa8a876131f7878905dcbb2e1d740d34d286d740c4"

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
