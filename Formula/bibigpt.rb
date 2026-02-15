# BibiGPT Desktop - AI Video/Audio Summary Assistant
# https://bibigpt.co

class Bibigpt < Formula
  desc "BibiGPT - AI Video/Audio Summary Assistant"
  homepage "https://bibigpt.co"
  
  livecheck do
    url "https://bibigpt-apps.oss-cn-beijing.aliyuncs.com/desktop-releases/latest.json"
    strategy :json
    regex(/(\d+\.\d+\.\d+)/)
  end
  
  url "https://bibigpt-apps.oss-cn-beijing.aliyuncs.com/desktop-releases/BibiGPT-4.252.4-darwin-aarch64.app.tar.gz"
  sha256 "ade1b4a6fecb71c8701b9944c8727b89bf475011919cb048d1976d33c9aa83ba"
  
  version "4.252.4"
  license "MIT"
  
  def install
    system "tar", "-xzf", Dir["*.tar.gz"].first if Dir["*.tar.gz"].any?
    
    # Find Applications folder
    apps_dir = HOMEBREW_PREFIX/"Applications"
    cp_r "BibiGPT.app", apps_dir if Dir.exist?("BibiGPT.app")
    
    # Create CLI symlink if exists
    cli_path = "#{apps_dir}/BibiGPT.app/Contents/MacOS/BibiGPT"
    bin.install_symlink cli_path => "bibi" if File.exist?(cli_path)
  end
end
