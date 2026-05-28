cask "portbay" do
  version "0.1.2"
  sha256 "56b40f30f4877c5ea2ef73cabdae98d043f1ed883dbdb63864e5e526a17c8034"

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
