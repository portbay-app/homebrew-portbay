cask "portbay" do
  version "0.1.5"
  sha256 "c254205de7560955e8ae0e12b4fa289f8adb3d8fda40d99bf92b10788419c4aa"

  url "https://github.com/portbay-app/portbay/releases/download/v#{version}/PortBay_0.1.5_aarch64.dmg"
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
