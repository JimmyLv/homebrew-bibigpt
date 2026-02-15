# BibiGPT Desktop - AI Video/Audio Summary Assistant
# https://bibigpt.co

class Bibigpt < Formula
  desc "BibiGPT - AI Video/Audio Summary Assistant"
  homepage "https://bibigpt.co"
  
  # Auto-update using the JSON endpoint
  livecheck do
    url "https://bibigpt-apps.oss-cn-beijing.aliyuncs.com/desktop-releases/latest.json"
    strategy :json
    regex(/(\d+\.\d+\.\d+)/)
  end
  
  version "4.252.4"
  
  if OS.mac? && Hardware::CPU.arm?
    url "https://bibigpt-apps.oss-cn-beijing.aliyuncs.com/desktop-releases/BibiGPT-4.252.4-darwin-aarch64.app.tar.gz"
  elsif OS.mac?
    url "https://bibigpt-apps.oss-cn-beijing.aliyuncs.com/desktop-releases/BibiGPT-4.252.4-darwin-x86_64.app.tar.gz"
  end
  
  sha256 "REPLACE_WITH_ACTUAL_SHA256"
  license "MIT"
  bottle :unneeded
  
  def install
    tarball = Dir["*.tar.gz"].first
    system "tar", "-xzf", tarball if tarball
    cp_r "BibiGPT.app", "/Applications/"
    cli_path = "#{appdir}/BibiGPT.app/Contents/MacOS/BibiGPT"
    bin.install_symlink cli_path => "bibi" if File.exist?(cli_path)
  end
  
  test do
    system "bibi", "--version" if which "bibi"
  end
end
