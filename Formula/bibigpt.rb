# Documentation: https://docs.brew.sh/Formula-Cookbook
# Documentation: https://github.com/Homebrew/brew/blob/master/docs/Formula-Cookbook.md
class Bibigpt < Formula
  desc "BibiGPT Desktop - AI Video/Audio Summary Assistant"
  homepage "https://bibigpt.co"
  
  # TODO: Update with actual version and URL from https://bibigpt.co/download/desktop
  # version "1.0.0"
  url "https://example.com/bibigpt-mac.dmg"
  sha256 "REPLACE_WITH_ACTUAL_SHA256"
  
  license "MIT"
  bottle :unneeded
  
  def install
    # Mount the DMG
    system "hdiutil", "attach", "-nobrowse", "#{staging_path}/#{archive_name}"
    
    # Copy the app to Applications
    system "cp", "-R", "/Volumes/BibiGPT/BibiGPT.app", "/Applications/"
    
    # Unmount
    system "hdiutil", "detach", "/Volumes/BibiGPT"
    
    # Create CLI symlink if app provides CLI
    cli_path = "#{appdir}/BibiGPT.app/Contents/MacOS/bibigpt"
    bin.install_symlink cli_path if File.exist?(cli_path)
  end
  
  test do
    system "bibi", "--version"
  end
end
