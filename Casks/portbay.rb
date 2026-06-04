cask "portbay" do
  version "0.1.2"
  sha256 "188991f5c9035b8b6773d249afa13b443784f078ea0c3017310dffbcf877d94f"

  url "https://github.com/portbay-app/portbay/releases/download/v#{version}/PortBay_0.1.2_aarch64.dmg"
  name "PortBay"

  depends_on arch: :arm64
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
