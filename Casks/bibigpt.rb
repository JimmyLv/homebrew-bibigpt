cask "bibigpt" do
  on_arm do
    version "4.805.0"
    sha256 "fd857ec9f243e5661ceae21bd2bc4b91e764c9f8d53dd99da4bc00746577ff5f"

    url "https://bibigpt-apps.chatvid.ai/desktop-releases/BibiGPT-#{version}-darwin-aarch64.app.tar.gz"

    livecheck do
      url "https://bibigpt-apps.chatvid.ai/desktop-releases/latest.json"
      strategy :json do |json|
        json["version"]
      end
    end
  end
  on_intel do
    version "4.754.1"
    sha256 "0abc238c847c9591127bf939d32cdf966fa7d7d9de07036fd42ab59f330d6ff6"

    url "https://bibigpt-apps.chatvid.ai/desktop-releases/BibiGPT-#{version}-darwin-x86_64.dmg"

    livecheck do
      url "https://bibigpt-apps.chatvid.ai/desktop-releases/latest-intel.json"
      strategy :json do |json|
        json["version"]
      end
    end
  end

  name "BibiGPT"
  desc "AI-powered video and audio content summarisation"
  homepage "https://bibigpt.co/"

  auto_updates true
  depends_on :macos

  app "BibiGPT.app"
  binary "#{appdir}/BibiGPT.app/Contents/MacOS/BibiGPT", target: "bibi"

  zap trash: [
    "~/Library/Application Support/co.bibigpt.desktop",
    "~/Library/Caches/co.bibigpt.desktop",
    "~/Library/Preferences/co.bibigpt.desktop.plist",
    "~/Library/Saved Application State/co.bibigpt.desktop.savedState",
    "~/Library/WebKit/co.bibigpt.desktop",
  ]
end
