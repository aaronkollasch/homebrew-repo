cask "jitouch" do
  version "2.80"
  sha256 "33d183e9a31015d6457e07bb37ad747a58d21a10d8ee032e721014d28b07ae01"

  url "https://github.com/aaronkollasch/jitouch/releases/download/v#{version}/Install-Jitouch.pkg"
  name "jitouch"
  desc "Multi-touch gestures editor"
  homepage "https://github.com/aaronkollasch/jitouch"

  pkg "Install-Jitouch.pkg"

  uninstall pkgutil: "com.jitouch.Jitouch.*",
            launchctl: "com.jitouch.Jitouch.agent"

  zap trash: [
    "~/Library/Preferences/com.jitouch.Jitouch.plist",
    "~/Library/LaunchAgents/com.jitouch.Jitouch.plist",
    "~/Library/Logs/com.jitouch.Jitouch.log",
    "~/Library/Logs/com.jitouch.Jitouch.prefpane.log"
  ]
end
