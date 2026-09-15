# BibiGPT Desktop - AI Video/Audio Summary Assistant
# https://bibigpt.co

cask "bibigpt" do
  version "4.635.1"

  on_arm do
    sha256 "4a61f1796ee0972ef62e1084ff8d8d70c9b0d0b97978830d81e59c5b8cb038f1"
    url "https://bibigpt-apps.oss-cn-beijing.aliyuncs.com/desktop-releases/BibiGPT-#{version}-darwin-aarch64.app.tar.gz"
  end

  # Intel 已不跟主发布流。cask version 升到 4.584.0 后 .app.tar.gz 被清掉 404；
  # 钉死仍在 OSS 上的 Intel DMG，避免 brew 跟 version 插值到不存在的 tarball。
  on_intel do
    sha256 "1acd39ed6395559970f3681e1623c3766abfaf091cb65618a4c52d3200b1da63"
    url "https://bibigpt-apps.oss-cn-beijing.aliyuncs.com/desktop-releases/BibiGPT-4.449.0-darwin-x86_64.dmg"
  end

  name "BibiGPT"
  desc "AI-powered video and audio content summarization"
  homepage "https://bibigpt.co"

  livecheck do
    url "https://bibigpt-apps.oss-cn-beijing.aliyuncs.com/desktop-releases/latest.json"
    strategy :json do |json|
      json["version"]
    end
  end

  auto_updates true

  app "BibiGPT.app"

  binary "#{appdir}/BibiGPT.app/Contents/MacOS/BibiGPT", target: "bibi"

  zap trash: [
    "~/Library/Application Support/co.bibigpt.desktop",
    "~/Library/Caches/co.bibigpt.desktop",
    "~/Library/Preferences/co.bibigpt.desktop.plist",
    "~/Library/Saved Application State/co.bibigpt.desktop.savedState",
  ]
end
