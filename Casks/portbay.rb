cask "portbay" do
  version "0.1.3"
  sha256 "2e84f8a7e62dd23a9660d56dd70cc7dc9ec670f0454fb72f4fff547d247a2cbf"

  url "https://github.com/portbay-app/portbay/releases/download/v#{version}/PortBay_0.1.2_aarch64.dmg"
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
