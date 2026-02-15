# BibiGPT Desktop - AI Video/Audio Summary Assistant
# https://bibigpt.co
#
# NOTE: For macOS .app installation to /Applications, use the cask instead:
#   brew install --cask jimmylv/bibigpt/bibigpt

class Bibigpt < Formula
  desc "BibiGPT - AI Video/Audio Summary Assistant"
  homepage "https://bibigpt.co"

  livecheck do
    url "https://bibigpt-apps.oss-cn-beijing.aliyuncs.com/desktop-releases/latest.json"
    strategy :json do |json|
      json["version"]
    end
  end

  url "https://bibigpt-apps.oss-cn-beijing.aliyuncs.com/desktop-releases/BibiGPT-4.252.4-darwin-aarch64.app.tar.gz"
  sha256 "ade1b4a6fecb71c8701b9944c8727b89bf475011919cb048d1976d33c9aa83ba"

  version "4.252.4"
  license "MIT"

  def install
    prefix.install "BibiGPT.app"

    cli_path = "#{prefix}/BibiGPT.app/Contents/MacOS/BibiGPT"
    if File.exist?(cli_path)
      bin.install_symlink cli_path => "bibi"
    end
  end

  def caveats
    <<~EOS
      BibiGPT.app has been installed to:
        #{prefix}/BibiGPT.app

      For automatic /Applications installation, use the cask instead:
        brew uninstall bibigpt
        brew install --cask jimmylv/bibigpt/bibigpt
    EOS
  end
end
