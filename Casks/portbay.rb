cask "portbay" do
  version "0.1.4"
  sha256 "eac2c48a75dd75aca93d4221782ec13e809fb1c52d04064d4c955e7c2a49ef43"

  url "https://github.com/portbay-app/portbay/releases/download/v#{version}/PortBay_0.1.4_aarch64.dmg"
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
