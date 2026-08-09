cask "amphetaminenet" do
  version "1.0.3"
  sha256 arm: "8d76fcbbf279568bad033947be548a1224550e630f6acaf5d1ef9e43c2536fca", intel: "33a351c903e6f47fbdf9cdcfb699bf1a602b5d05e2487ea3240928cc039c4d6a"

  on_arm do
    url "https://github.com/RASLK/AmphetamineNet/releases/download/v1.0.3/AmphetamineNet-1.0.3-macos-arm64.dmg"
  end

  on_intel do
    url "https://github.com/RASLK/AmphetamineNet/releases/download/v1.0.3/AmphetamineNet-1.0.3-macos-intel.dmg"
  end

  name "AmphetamineNet"
  desc "macOS menu bar utility that keeps your Mac awake"
  homepage "https://github.com/RASLK/AmphetamineNet"

  auto_updates true
  app "AmphetamineNet.app"
end
