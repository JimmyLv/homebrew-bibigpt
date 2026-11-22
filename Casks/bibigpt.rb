cask "bibigpt" do
  on_arm do
    version "4.832.0"
    sha256 "873fb9516d531522a178d5e81e48175817f2960c6551f978a9408d3a8e8399f7"

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
  desc "AI video and audio summariser"
  homepage "https://bibigpt.co/"

  auto_updates true
  depends_on :macos

  app "BibiGPT.app"
  binary "#{appdir}/BibiGPT.app/Contents/MacOS/BibiGPT", target: "bibi"

  zap trash: [
    "~/.local/bin/bibi",
    "~/Library/Application Support/co.bibigpt.desktop",
    "~/Library/Caches/co.bibigpt.desktop",
    "~/Library/Preferences/co.bibigpt.desktop.plist",
    "~/Library/Saved Application State/co.bibigpt.desktop.savedState",
    "~/Library/WebKit/co.bibigpt.desktop",
  ]
end
