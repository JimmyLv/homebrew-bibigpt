# BibiGPT Desktop - AI Video/Audio Summary Assistant
# https://bibigpt.co

class Bibigpt < Formula
  desc "BibiGPT - AI Video/Audio Summary Assistant"
  homepage "https://bibigpt.co"
  
  # TODO: Update sha256 after first install
  # Run: shasum -a 256 ~/Library/Caches/Homebrew/downloads/*bibigpt*
  sha256 "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855"
  
  version "4.252.4"
  
  # Use ARM64 URL by default (most common)
  url "https://bibigpt-apps.oss-cn-beijing.aliyuncs.com/desktop-releases/BibiGPT-4.252.4-darwin-aarch64.app.tar.gz"
  
  license "MIT"
  
  def install
    # Extract and install
    system "tar", "-xzf", Dir["*.tar.gz"].first if Dir["*.tar.gz"].any?
    cp_r "BibiGPT.app", "/Applications/" if Dir.exist?("BibiGPT.app")
  end
end
