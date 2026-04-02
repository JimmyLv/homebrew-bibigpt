# BibiGPT Desktop - AI Video/Audio Summary Assistant
# https://bibigpt.co

cask "bibigpt" do
  version "4.314.1"

  on_arm do
    sha256 "f9165f818d52c4ab6d0c071d6d83d2f2a663e4f5d4d40902ffe4a0a6940c32e0"
    url "https://bibigpt-apps.oss-cn-beijing.aliyuncs.com/desktop-releases/BibiGPT-#{version}-darwin-aarch64.app.tar.gz"
  end

  on_intel do
    sha256 "bdf69aad750feb8026573321b921126894bdcc9f8525fbb196898a53febb3871"
    url "https://bibigpt-apps.oss-cn-beijing.aliyuncs.com/desktop-releases/BibiGPT-#{version}-darwin-x86_64.app.tar.gz"
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
