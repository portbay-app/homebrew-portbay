cask "portbay" do
  version "0.1.0"
  sha256 "f96aa894d3bbfbca2b27f3da34df93c32c8bb3c92c14fb692526fd49acb78b3a"

  url "https://github.com/portbay-app/portbay/releases/download/v#{version}/PortBay_0.1.0_aarch64.dmg"
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
