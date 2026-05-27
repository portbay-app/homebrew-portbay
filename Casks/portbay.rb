cask "portbay" do
  version "0.1.1"
  sha256 "2958fd4026bc715230ffed016c24a44a753b6125cbd2aaf180e6c932b67ee143"

  url "https://github.com/portbay-app/portbay/releases/download/v#{version}/PortBay_0.1.1_aarch64.dmg"
  name "PortBay"
  desc "Lightweight local development environment manager"
  homepage "https://portbay.app"

  app "PortBay.app"
  binary "#{appdir}/PortBay.app/Contents/MacOS/portbay"

  zap trash: [
    "~/Library/Application Support/com.portbay-app.portbay",
    "~/Library/Application Support/PortBay",
    "~/Library/Caches/com.portbay-app.portbay",
    "~/Library/Logs/PortBay",
    "~/Library/Preferences/com.portbay-app.portbay.plist",
    "~/Library/WebKit/com.portbay-app.portbay",
  ]
end
