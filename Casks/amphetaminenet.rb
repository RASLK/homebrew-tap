cask "amphetaminenet" do
  version "1.0.2"
  sha256 arm: "2e0e0ab6088d9f5424964f590ebd017026a7f042345637841a873e45fd82c38b", intel: "25c5ef7bc8587766410b68822b67355bd8e4962ab6e7b9e72453d67a06da1b00"

  on_arm do
    url "https://github.com/RASLK/AmphetamineNet/releases/download/v1.0.2/AmphetamineNet-1.0.2-macos-arm64.dmg"
  end

  on_intel do
    url "https://github.com/RASLK/AmphetamineNet/releases/download/v1.0.2/AmphetamineNet-1.0.2-macos-intel.dmg"
  end

  name "AmphetamineNet"
  desc "macOS menu bar utility that keeps your Mac awake"
  homepage "https://github.com/RASLK/AmphetamineNet"

  auto_updates true
  app "AmphetamineNet.app"
end
